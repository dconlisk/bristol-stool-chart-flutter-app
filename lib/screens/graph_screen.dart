import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/event_provider.dart';
import '../widgets/graph.dart';
import '../screens/graph_information_screen.dart';

class GraphScreen extends StatefulWidget {
  static const routeName = '/graph';

  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  // Future<void> _share(dynamic chart) async {
  //   print(chart);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Graph'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.info), onPressed: () {
            Navigator.of(context).pushNamed(GraphInformationScreen.routeName);
          },),
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<EventProvider>(context, listen: false)
            .fetchAndSetEvents(),
        builder: (ctx, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    children: <Widget>[
                      Expanded(
                        child: Consumer<EventProvider>(
                          child: Center(
                            child: Text(
                                'You don\'t have any stools recorded, start adding some!'),
                          ),
                          builder: (ctx, eventProvider, ch) =>
                              eventProvider.events.length <= 0
                                  ? ch
                                  : Graph(eventProvider.events),
                        ),
                      ),
                      FlatButton(
                        child: Text('SHARE'),
                        onPressed: () => {
                          
                        },
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
      ),
    );
  }
}
