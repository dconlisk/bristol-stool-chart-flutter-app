import 'package:bristol_stool_chart/presentation/widgets/graph.dart';
import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GraphPage extends ConsumerStatefulWidget {
  const GraphPage({Key? key}) : super(key: key);

  @override
  _GraphPageState createState() => _GraphPageState();
}

class _GraphPageState extends ConsumerState<GraphPage> {
  @override
  void initState() {
    super.initState();
    ref.read(graphNotifierProvider.notifier).initialise();
  }

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Your Graph'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              //Navigator.of(context).pushNamed(GraphInformationScreen.routeName);
            },
          ),
        ],
      ),
      bottomSheet: Container(
        height: 150,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.all(32.0),
        child: FloatingActionButton(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          child: const Icon(
            Icons.add,
            size: 28,
          ),
          onPressed: () {
            //  => Navigator.push(
            // context,
            // MaterialPageRoute(
            //   builder: (context) => new AddScreen(),
            //   fullscreenDialog: true,
            // ),
          },
        ),
      ),
      drawer: const MainDrawer(),
      body: Consumer(builder: (context, ref, child) {
        final graphState = ref.watch(graphNotifierProvider);
        return graphState.map(
          initial: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          initialised: (state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  if (state.stools.isEmpty)
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Text(
                        'To begin, tap the button below to add a stool',
                        style: Theme.of(context).textTheme.headline5,
                        textAlign: TextAlign.center,
                      ),
                    )
                  else
                    Graph(stools: state.stools),
                ],
              ),
            );
          },
          failure: (_) => const ListTile(
            title: Text('Very unexpected error'),
          ),
        );
      }),
    );
  }
}
