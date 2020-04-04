import 'package:flutter/material.dart';

import './dashboard_screen.dart';
import '../widgets/main_drawer.dart';
import '../providers/event_provider.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';

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
                  await Navigator.pushNamedAndRemoveUntil(
                      context, DashboardScreen.routeName, (_) => false);
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
                style: Theme.of(context).textTheme.body1,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Remove all data',
                    style: Theme.of(context).textTheme.display2,
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
