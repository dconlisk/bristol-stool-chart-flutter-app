import 'package:flutter/material.dart';

import './screens/dashboard_screen.dart';
import './screens/add_screen.dart';
import './screens/graph_screen.dart';
import './screens/settings_screen.dart';
import './screens/about_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bristol Stool Chart',
      theme: ThemeData(
        primarySwatch: Colors.lightGreenAccent[300],
        primaryColor: Colors.lightBlueAccent,
        accentColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.lightBlueAccent,
          opacity: 1,
          size: 60,
        ),
        accentIconTheme: IconThemeData(
          color: Colors.white,
          opacity: 1,
          size: 25,
        ),
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
          ),
          display1: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        accentTextTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: DashboardScreen(),
      routes: {
        GraphScreen.routeName: (ctx) => GraphScreen(),
        AddScreen.routeName: (ctx) => AddScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
        AboutScreen.routeName: (ctx) => AboutScreen(),
      },
    );
  }
}
