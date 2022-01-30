import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: const MainDrawer(),
      body: const Center(
        child: Text('Settings Page'),
      ),
    );
  }
}
