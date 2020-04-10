import 'package:flutter/material.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import 'package:intl/intl.dart';

import '../providers/event_provider.dart';
import '../widgets/graph.dart';
import '../widgets/main_drawer.dart';
import '../screens/graph_information_screen.dart';
import '../screens/add_screen.dart';

class GraphScreen extends StatefulWidget {
  static const routeName = '/graph';

  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  // Future<void> _share(dynamic chart) async {
  //   print(chart);
  // }

  Future<void> _csv() async {
    final csvData = await Provider.of<EventProvider>(context, listen: false).getDataAsCsv();
    final directory = await getTemporaryDirectory();
    var attachmentFilename = 'BristolStoolChartData_${DateFormat('yyyyMMddHHmm').format(DateTime.now())}.csv';
    final csvFile = File('${directory.path}/$attachmentFilename');
    print(csvFile.path);
    await csvFile.writeAsString(csvData);
    
    // TODO: Error handling, in case user doesn't have mail client enabled/installed
    // send email attachment
    final MailOptions mailOptions = MailOptions(
      //body: 'a long body for the email <br> with a subset of HTML',
      //subject: 'the Email Subject',
      //recipients: ['example@example.com'],
      isHTML: true,
      //bccRecipients: ['other@example.com'],
      //ccRecipients: ['third@example.com'],
      attachments: [ csvFile.path, ],
    );

    await FlutterMailer.send(mailOptions);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        future: Provider.of<EventProvider>(context, listen: false)
            .fetchAndSetEvents(),
        builder: (ctx, snapshot) => snapshot.connectionState ==
                ConnectionState.waiting
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: <Widget>[
                  Expanded(
                    child: Consumer<EventProvider>(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                        'You don\'t have any stools recorded yet, start adding some!'),
                                    FlatButton(
                                      child: Text('ADD STOOL'),
                                      onPressed: () =>
                                          Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        AddScreen.routeName,
                                        (_) => false,
                                      ),
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        builder: (ctx, eventProvider, ch) =>
                            eventProvider.events.length <= 0
                                ? ch
                                : Column(
                                    children: <Widget>[
                                      Graph(eventProvider.events),
                                      FlatButton(
                                        child: Text('SHARE'),
                                        onPressed: _csv,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ],
                                  )),
                  )
                ],
              ),
      ),
    );
  }
}
