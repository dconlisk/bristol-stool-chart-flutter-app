import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_core/core.dart';

import './providers/event_provider.dart';
import './screens/add_screen.dart';
import './screens/graph_screen.dart';
import './screens/intro_screen.dart';
import './screens/settings_screen.dart';
import './screens/about_screen.dart';
import './screens/graph_information_screen.dart';

void main() {
  // Add licenses for Google fonts
  LicenseRegistry.addLicense(() async* {
    final playfairLicense = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], playfairLicense);

    final robotoLicense = await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], robotoLicense);
  });

  // Register license for Syncfusion chart control
  SyncfusionLicense.registerLicense(
      "NT8mJyc2IWhia31hfWN9Z2doYmF8YGJ8ampqanNiYmlmamlmanMDHmg3MiU6NxMkNjF+NDIhNzY9fTA8fSY4");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: EventProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bristol Stool Chart',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: Theme.of(context).accentIconTheme,
            textTheme: TextTheme(
              headline6: TextStyle(
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
            headline2: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
              decoration: TextDecoration.underline,
            ),
            headline3: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
            headline4: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            headline5: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.38),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            headline6: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.38),
            ),
            bodyText1: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
            bodyText2: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            button: TextStyle(
              color: Colors.white,
            ),
          ),
          accentTextTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        home: GraphScreen(),
        routes: {
          IntroScreen.routeName: (ctx) => IntroScreen(),
          AddScreen.routeName: (ctx) => AddScreen(),
          SettingsScreen.routeName: (ctx) => SettingsScreen(),
          AboutScreen.routeName: (ctx) => AboutScreen(),
          GraphScreen.routeName: (ctx) => GraphScreen(),
          GraphInformationScreen.routeName: (ctx) => GraphInformationScreen(),
        },
      ),
    );
  }
}
