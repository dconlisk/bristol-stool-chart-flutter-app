import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
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
    ref.listen(initializationProvider, (_, __) {});

    ref.listen<IntroState>(introNotifierProvider,
        (previousState, currentState) {
      currentState.map(
        initial: (_) {},
        importFailed: (_) async {
          await _appRouter.pushAndPopUntil(
            IntroRoute(),
            predicate: (route) => false,
          );
        },
        hasSeenIntro: (_) async {
          await _appRouter.pushAndPopUntil(
            const GraphRoute(),
            predicate: (route) => false,
          );
        },
        hasNotSeenIntro: (_) async {
          await _appRouter.pushAndPopUntil(
            IntroRoute(),
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
        primarySwatch: AppColors.blue,
        scaffoldBackgroundColor: AppColors.white,
      ),
    );
  }
}
