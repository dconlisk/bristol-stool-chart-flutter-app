import 'package:flutter/material.dart';

import './dashboard_screen.dart';
import '../widgets/main_drawer.dart';
import '../providers/event_provider.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Future<void> _enableBlood(BuildContext context) async {}

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
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Enable blood check',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  TextSpan(
                    text:
                        '\r\n\r\nYou can record whenever you have blood in your stool by checking the box below. This will add a "blood in stool?" checkbox to the add screen. Any stools that have blood in them will '
                        'be rendered in red on the graph.\r\n\r\n',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: FlatButton(
                child: Text('Enable Blood In Stool Checkbox'),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: () => _enableBlood(context),
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
