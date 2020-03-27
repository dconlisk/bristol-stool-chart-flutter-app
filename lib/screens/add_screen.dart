import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  static const routeName = '/add';
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Stool'),
      ),
      body: Center(
        child: Text('Slider goes here'),
      ),
    );
  }
}
