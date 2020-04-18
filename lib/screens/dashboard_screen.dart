import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../widgets/main_drawer.dart';
import '../screens/add_screen.dart';
import '../screens/graph_screen.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((Duration duration) {
      FeatureDiscovery.discoverFeatures(
        context,
        const <String>{
          // Feature ids for every feature that you want to showcase in order.
          'add_stool_id',
          'view_graph_id',
          'drawer_id',
        },
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        drawer: MainDrawer(),
        body: DescribedFeatureOverlay(
          featureId: 'drawer_id',
          tapTarget: const Icon(
            Icons.menu,
          ),
          title: Text('Access the menu'),
          description: Text(
              'You can tap the menu icon at the top left at any point to access all of the screens in the app.'),
          backgroundColor: Theme.of(context).primaryColor,
          targetColor: Colors.white,
          textColor: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(50),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        DescribedFeatureOverlay(
                          featureId: 'add_stool_id',
                          tapTarget: const Icon(
                            Icons.add,
                          ),
                          title: Text('Add a stool'),
                          description:
                              Text('Tap the plus icon to add a stool.'),
                          backgroundColor: Theme.of(context).primaryColor,
                          targetColor: Colors.white,
                          textColor: Colors.white,
                          child: Icon(
                            Icons.add_circle,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ),
                        Text(
                          'Add a stool',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 20),
                        ),
                      ]),
                  onPressed: () {
                    Navigator.of(context).pushNamed(AddScreen.routeName);
                  },
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Theme.of(context).iconTheme.color,
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(50),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        DescribedFeatureOverlay(
                          featureId: 'view_graph_id',
                          tapTarget: const Icon(
                            Icons.assessment,
                          ),
                          title: Text('View your graph'),
                          description: Text(
                              'Tap here to view your graph and see your progress.'),
                          backgroundColor: Theme.of(context).primaryColor,
                          targetColor: Colors.white,
                          textColor: Colors.white,
                          child: Icon(
                            Icons.assessment,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ),
                        Text(
                          'View your graph',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 20),
                        ),
                      ]),
                  onPressed: () {
                    Navigator.of(context).pushNamed(GraphScreen.routeName);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
