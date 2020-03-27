import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/event_provider.dart';

class GraphScreen extends StatelessWidget {
  static const routeName = '/graph';

  @override
  Widget build(BuildContext context) {
    final eventProvider = EventProvider();
    eventProvider.fetchAndSetEvents();
    final events = eventProvider.events;
    print(events);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Graph'),
      ),
      body: FutureBuilder(
        future: Provider.of<EventProvider>(context, listen: false)
            .fetchAndSetEvents(),
        builder: (ctx, snapshot) => snapshot.connectionState ==
                ConnectionState.waiting
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Consumer<EventProvider>(
                child: Center(
                  child: Text(
                      'You don\'t have any stools recorded, start adding some!'),
                ),
                builder: (ctx, eventProvider, ch) => eventProvider
                            .events.length <=
                        0
                    ? ch
                    : Text(
                        'Graph goes here with ${eventProvider.events.length} stools')),
      ),
    );
  }
}
