import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_core/core.dart';
import 'package:feature_discovery/feature_discovery.dart';

import './providers/event_provider.dart';
import './screens/dashboard_screen.dart';
import './screens/add_screen.dart';
import './screens/graph_screen.dart';
import './screens/settings_screen.dart';
import './screens/about_screen.dart';
import './screens/graph_information_screen.dart';

void main() {
  SyncfusionLicense.registerLicense(
      "NT8mJyc2IWhia31ifWN9YGVoYmF8YGJ8ampqanNiYmlmamlmanMDHmg3MiU6NxMkNjF+NDIhNzY9fTA8fSY4");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: EventProvider(),
      child: FeatureDiscovery(
        child: MaterialApp(
          title: 'Bristol Stool Chart',
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              iconTheme: Theme.of(context).accentIconTheme,
              textTheme: TextTheme(
                title: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              elevation: 10,
            ),
            primarySwatch: Colors.lightGreenAccent[300],
            primaryColor: Colors.lightBlueAccent,
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
              display2: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
              display3: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
              body1: TextStyle(
                color: Colors.black,
                fontSize: 16,
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
            GraphInformationScreen.routeName: (ctx) => GraphInformationScreen(),
          },
        ),
      ),
    );
  }
}
