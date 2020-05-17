import 'package:flutter/material.dart';

import '../widgets/drawer_link.dart';
import '../screens/graph_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/about_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey[900],
        padding: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.only(left: 16,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                  bottom: 80,
                ),
                child: Image(
                  image: AssetImage('assets/images/drawer_logo.png'),
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              DrawerLink(
                  key: Key('view-graph'),
                  text: 'Graph',
                  icon: Icons.assessment,
                  route: GraphScreen.routeName),
              DrawerLink(
                  key: Key('settings'),
                  text: 'Settings',
                  icon: Icons.settings,
                  route: SettingsScreen.routeName),
              DrawerLink(
                  key: Key('about'),
                  text: 'About',
                  icon: Icons.info,
                  route: AboutScreen.routeName),
            ],
          ),
        ),
      ),
    );
  }
}
