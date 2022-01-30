import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class GraphPage extends StatelessWidget {
  const GraphPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Graph')),
      drawer: const MainDrawer(),
      body: const Center(
        child: Text('Graph Page'),
      ),
    );
  }
}
