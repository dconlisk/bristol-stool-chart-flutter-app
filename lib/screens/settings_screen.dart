import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './dashboard_screen.dart';
import '../widgets/main_drawer.dart';
import '../providers/event_provider.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _showBlood = false;

  @override
  void initState() {
    super.initState();
    getAndSetShowBlood();
  }

  Future<Null> getAndSetShowBlood() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      _showBlood = prefs.getBool("show_blood") ?? false;
    });
  }

  Future<void> _enableBlood(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('show_blood', value);
    setState(() {
      _showBlood = value;
    });
  }

  Future<void> _delete(BuildContext context) async {
    var provider = EventProvider();

    await provider.deleteAll();

    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text(
                'All of your existing stool data will be permanently removed. Do you wish to continue?'),
            actions: <Widget>[
              FlatButton(
                child: Text('CANCEL'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('DELETE ALL DATA'),
                onPressed: () async {
                  var provider = EventProvider();
                  await provider.deleteAll();
                  Navigator.of(context).pop();
                  showDialog(
                    context: context,
                    builder: (ctx) {
                      return AlertDialog(
                        title: Text('Data deleted'),
                        content: Text(
                            'All of your data has been removed permanently.'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () async {
                              await Navigator.pushNamedAndRemoveUntil(
                                context,
                                DashboardScreen.routeName,
                                (_) => false,
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Enable blood check?',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Switch(
                        value: _showBlood,
                        onChanged: _enableBlood,
                      ),
                    ],
                  ),
                  Text(
                    'You can record whenever you have blood in your stool by enabling this feature. This will add a "blood in stool?" checkbox to the add screen. Any stools that have blood in them will '
                    'be displayed in red on the graph.',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Remove all data',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  TextSpan(
                    text:
                        '\r\n\r\nYou can remove all data from the app and start again with a clean sheet. Simply tap the Delete Data button, below.\r\n\r\n',
                  ),
                ],
              ),
            ),
            FlatButton(
              child: Text('DELETE DATA'),
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () => _delete(context),
            ),
          ],
        ),
      ),
    );
  }
}
