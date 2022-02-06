import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class GraphInfoPage extends StatelessWidget {
  const GraphInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            GestureDetector(
              onTap: () {
                AutoRouter.of(context).pop(TransitionsBuilders.slideBottom);
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(Icons.close),
              ),
            ),
          ],
          title: const Text('About the graph')),
      body: const Center(
        child: Text('Graph Information Page'),
      ),
    );
  }
}
