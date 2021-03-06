import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/main_drawer.dart';
import '../screens/add_screen.dart';
import '../screens/graph_screen.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        drawer: MainDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.all(50),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.add_circle,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      Text(
                        'Add a stool',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20),
                      ),
                    ]),
                onPressed: () {
                  Navigator.of(context).pushNamed(AddScreen.routeName);
                },
              ),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Theme.of(context).iconTheme.color,
            ),
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.all(50),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.assessment,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      Text(
                        'View your graph',
                        style: GoogleFonts.roboto(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20,
                        ),
                        // style: TextStyle(
                        //     color: Theme.of(context).primaryColor,
                        //     fontSize: 20),
                      ),
                    ]),
                onPressed: () {
                  Navigator.of(context).pushNamed(GraphScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
