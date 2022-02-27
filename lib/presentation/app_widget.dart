import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:bristol_stool_chart/application/intro_notifier.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.gr.dart';

final initializationProvider = FutureProvider((ref) async {
  await ref.read(sembastProvider).init();
  await ref.read(introNotifierProvider.notifier).initialise();
  return unit;
});

class AppWidget extends ConsumerWidget {
  final _appRouter = AppRouter();

  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // This seems sort of a hack to get introNotifier.checkAndUpdateIntroStatus() to run once only
    ref.listen(initializationProvider, (_, __) {});

    ref.listen<IntroState>(introNotifierProvider,
        (previousState, currentState) {
      currentState.map(
        initial: (_) {},
        importFailed: (_) async {
          return await showDialog<AlertDialog>(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('An error occurred'),
              content: const Text(
                  'Unfortunately we could not import your data from the previous version of the app. We apologise for any inconvenience caused.'),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text('OK'),
                  onPressed: () {
                    context.router.popUntilRoot();
                  },
                )
              ],
            ),
          );
        },
        hasSeenIntro: (_) {
          _appRouter.pushAndPopUntil(
            const GraphRoute(),
            predicate: (route) => false,
          );
        },
        hasNotSeenIntro: (_) {
          _appRouter.pushAndPopUntil(
            const IntroRoute(),
            predicate: (route) => false,
          );
        },
      );
    });

    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Bristol Stool Chart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
