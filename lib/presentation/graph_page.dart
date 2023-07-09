import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/application/graph_notifier.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.dart';
import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:bristol_stool_chart/presentation/widgets/graph.dart';
import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class GraphPage extends ConsumerStatefulWidget {
  const GraphPage({super.key});

  @override
  ConsumerState<GraphPage> createState() => _GraphPageState();
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
            title: Text(AppLocalizations.of(context)!.errorOccurredTitle),
            content: Text(
              AppLocalizations.of(context)!.shareErrorOccurredMessage,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.router.pop();
                },
                child: Text(
                  AppLocalizations.of(context)!.continueButtonText,
                ),
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
        title: Text(AppLocalizations.of(context)!.graphPageTitle),
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
                        AppLocalizations.of(context)!.graphIntroText,
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppPadding.sizedBoxVerticalLarge,
                        Expanded(
                          flex: 3,
                          child: RepaintBoundary(
                              key: _graphKey,
                              child: Graph(stools: state.stools)),
                        ),
                        Padding(
                          padding: AppPadding.regularHorizontal,
                          child: ElevatedButton(
                            onPressed: () async {
                              await ref
                                  .read(graphNotifierProvider.notifier)
                                  .share(context, _graphKey);
                            },
                            child: Text(
                                AppLocalizations.of(context)!.shareButtonText),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: AppSizes.large,
                          ),
                        ),
                      ],
                    );
            },
            loadFailure: (_) => ListTile(
              title: Text(
                AppLocalizations.of(context)!.fatalErrorOccurredMessage,
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
