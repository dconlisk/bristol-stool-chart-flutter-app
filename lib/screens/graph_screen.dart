import 'package:flutter/material.dart';

class GraphScreen extends StatelessWidget {
  static const routeName = '/graph';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Graph'),
      ),
      body: Center(
        child: Text('Slider goes here'),
      ),
    );
  }
}