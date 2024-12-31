import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/application/graph_notifier.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.dart';
import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:bristol_stool_chart/presentation/widgets/graph.dart';
import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
import 'package:bristol_stool_chart/presentation/widgets/version_features_dialog.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkForNewFeatures(context);
    });
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
              style: Theme.of(context).textTheme.titleMedium,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.router.popForced();
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

    return LayoutBuilder(builder: (context, constraints) {
      final isLandscape = constraints.maxWidth > constraints.maxHeight;
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
        body: Consumer(builder: (context, ref, child) {
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
                        Expanded(
                          flex: 3,
                          child: RepaintBoundary(
                            key: _graphKey,
                            child: Graph(
                              stools: state.stools,
                              isLandscape: isLandscape,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height:
                                isLandscape ? AppSizes.small : AppSizes.large,
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
        }),
        bottomSheet: Container(
          height: isLandscape ? 80 : 120,
          alignment: Alignment.center,
          padding: isLandscape ? AppPadding.small : AppPadding.large,
          color: AppColors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: AppPadding.regularHorizontal,
                child: ElevatedButton(
                  onPressed: () async {
                    await ref
                        .read(graphNotifierProvider.notifier)
                        .share(context, _graphKey);
                  },
                  child: Text(AppLocalizations.of(context)!.shareButtonText),
                ),
              ),
              FloatingActionButton(
                materialTapTargetSize: MaterialTapTargetSize.padded,
                child: const Icon(
                  Icons.add,
                  size: AppSizes.large,
                ),
                onPressed: () {
                  context.router.push(AddRoute());
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}

void _checkForNewFeatures(BuildContext context) async {
  await VersionFeaturesDialog.showIfNeeded(
    context,
    title: AppLocalizations.of(context)!.newFeaturesTitle,
    features: [
      AppLocalizations.of(context)!.newFeature1,
      AppLocalizations.of(context)!.newFeature2,
    ],
    buttonText: AppLocalizations.of(context)!.continueButtonText,
  );
}
