import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/application/graph_notifier.dart';
import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:bristol_stool_chart/presentation/widgets/graph.dart';
import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.gr.dart';

class GraphPage extends ConsumerStatefulWidget {
  const GraphPage({Key? key}) : super(key: key);

  @override
  _GraphPageState createState() => _GraphPageState();
}

class _GraphPageState extends ConsumerState<GraphPage> {
  final _graphKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    ref.read(graphNotifierProvider.notifier).watchStools();
  }

  @override
  Widget build(context) {
    ref.listen<GraphState>(graphNotifierProvider, (_, state) {
      state.maybeMap(
        shareFailure: (_) async => await showDialog<AlertDialog>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('An error occurred'),
            content: const Text(
                'There was a problem sharing your data. Please make sure that you have an email client installed on your device.'),
            actions: [
              TextButton(
                onPressed: () {
                  context.router.pop();
                },
                child: const Text('Continue'),
              )
            ],
          ),
        ),
        orElse: () {},
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Your Graph'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              AutoRouter.of(context).push(
                const GraphInfoRoute(),
              );
            },
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: Consumer(
        builder: (context, ref, child) {
          final graphState = ref.watch(graphNotifierProvider);
          return graphState.maybeMap(
            initial: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            initialised: (state) {
              return (state.stools.isEmpty)
                  ? Padding(
                      padding: AppPadding.large,
                      child: Text(
                        'To begin, tap the button below to add a stool',
                        style: Theme.of(context).textTheme.headline5,
                        textAlign: TextAlign.center,
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppPadding.sizedBoxVerticalLarge,
                        Expanded(
                          child: RepaintBoundary(
                              key: _graphKey,
                              child: Graph(stools: state.stools)),
                          flex: 3,
                        ),
                        Padding(
                          padding: AppPadding.regularHorizontal,
                          child: ElevatedButton(
                            onPressed: () async {
                              await ref
                                  .read(graphNotifierProvider.notifier)
                                  .share(context, _graphKey);
                            },
                            child: const Text('Share'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: AppSizes.large,
                          ),
                          flex: 1,
                        ),
                      ],
                    );
            },
            loadFailure: (_) => const ListTile(
              title: Text(
                'Very unexpected error. Please try restarting the app.',
              ),
            ),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
      bottomSheet: Container(
        height: 120,
        alignment: Alignment.centerRight,
        padding: AppPadding.large,
        color: AppColors.white,
        child: FloatingActionButton(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          child: const Icon(
            Icons.add,
            size: AppSizes.large,
          ),
          onPressed: () {
            context.router.push(const AddRoute());
          },
        ),
      ),
    );
  }
}
