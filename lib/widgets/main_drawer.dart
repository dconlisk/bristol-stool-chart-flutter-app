import 'dart:io';

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.lightBlueAccent,
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/drawer_logo.png'),
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
