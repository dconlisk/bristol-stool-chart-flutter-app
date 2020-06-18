import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../providers/event_provider.dart';
import '../widgets/graph.dart';
import '../widgets/main_drawer.dart';
import '../screens/graph_information_screen.dart';
import '../screens/add_screen.dart';
import '../screens/intro_screen.dart';
import '../helpers/mail_helper.dart';
import '../helpers/file_helper.dart';

class GraphScreen extends StatefulWidget {
  static const routeName = '/graph';

  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  GlobalKey _globalKey = new GlobalKey();

  // https://medium.com/flutter-community/export-your-widget-to-image-with-flutter-dc7ecfa6bafb
  Future<Uint8List> _getGraphAsBytes() async {
    try {
      RenderRepaintBoundary boundary =
          _globalKey.currentContext.findRenderObject();
      ui.Image image = await boundary.toImage(pixelRatio: 1.0);
      ByteData byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      return byteData.buffer.asUint8List();
    } catch (e) {
      // todo: notify user of error
      print(e);
    }
    return null;
  }

  Future<String> _getDataAsCsv() async {
    var eventProvider = Provider.of<EventProvider>(context, listen: false);
    await eventProvider.fetchAndSetEvents();

    final prefs = await SharedPreferences.getInstance();
    final includeBloodInfo = prefs.getBool("show_blood") ?? false;

    var rows = eventProvider.events
        .map((e) => includeBloodInfo
            ? '${DateFormat('dd/MM/yyyy H:mm:ss').format(e.dateTime)},${e.type}, ${e.bloodInStool ? 'Y' : 'N'}'
            : '${DateFormat('dd/MM/yyyy H:mm:ss').format(e.dateTime)},${e.type}')
        .toList();

    rows.insert(
        0,
        includeBloodInfo
            ? 'Date and time,BSC Type,Blood in stool?'
            : 'Date and time,BSC Type');

    return rows.fold('', (prev, element) => '$prev\r\n$element').trim();
  }

  // Create an email with the graph image and the csv data attached.
  Future<void> _share(dynamic chart) async {
    final bytes = await _getGraphAsBytes();
    final graphImagePath = await FileHelper.writeBytesToFile(context, bytes);

    final csvData = await _getDataAsCsv();
    final csvFilePath = await FileHelper.writeStringToFile(context, csvData);

    var result =
        await MailHelper.sendMailWithAttachments([graphImagePath, csvFilePath]);

    if (!result) {
      return showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Sharing failed'),
          content: Text(
              'There was a problem sharing your data. This may be because you do not have a default mail client installed on your device.'),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }
  }

  Future<void> _initialise() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var userHasSeenIntro = (prefs.getBool('intro_seen') ?? false);

    if (!userHasSeenIntro) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new IntroScreen()));
    }

    await Provider.of<EventProvider>(context, listen: false)
        .fetchAndSetEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Your Graph'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.of(context).pushNamed(GraphInformationScreen.routeName);
            },
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: FutureBuilder(
        future: _initialise(),
        builder: (ctx, snapshot) => snapshot.connectionState ==
                ConnectionState.waiting
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Consumer<EventProvider>(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 60,
                          left: 30.0,
                          right: 30.0,
                        ),
                        child: Column(
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'To begin, tap the button below to add a stool',
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      builder: (ctx, eventProvider, ch) => eventProvider
                                  .events.length <=
                              0
                          ? ch
                          : Column(
                              children: <Widget>[
                                RepaintBoundary(
                                  key: _globalKey,
                                  child: Graph(eventProvider.events),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: const EdgeInsets.all(8.0),
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    child: Text(
                                      'SHARE',
                                      style: Theme.of(context).textTheme.button,
                                    ),
                                    onPressed: () => _share(context),
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ],
                            ),
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        child: Icon(
                          Icons.add,
                          size: 28,
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => new AddScreen(),
                            fullscreenDialog: true,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
