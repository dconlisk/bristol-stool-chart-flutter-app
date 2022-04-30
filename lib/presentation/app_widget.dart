import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:dartz/dartz.dart';
import 'package:bristol_stool_chart/application/intro_notifier.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.gr.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            const IntroRoute(),
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
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      theme: ThemeData(
        primarySwatch: AppColors.blue,
        scaffoldBackgroundColor: AppColors.white,
        textTheme: TextTheme(
          headline1: GoogleFonts.roboto(
            fontSize: AppSizes.titleFontSize,
            fontWeight: FontWeight.bold,
          ),
          headline2: GoogleFonts.playfairDisplay(
            fontSize: AppSizes.titleFontSize,
            fontWeight: FontWeight.bold,
          ),
          headline3: const TextStyle(
            fontSize: AppSizes.titleFontSize,
            color: AppColors.white,
          ),
          headline4: const TextStyle(
            color: AppColors.blue,
            fontSize: AppSizes.paragraphFontSize,
            decoration: TextDecoration.underline,
          ),
          bodyText1: GoogleFonts.roboto(
            color: AppColors.lightGrey,
            fontSize: AppSizes.paragraphFontSize,
          ),
          bodyText2: const TextStyle(
            fontSize: AppSizes.paragraphFontSize,
            color: AppColors.white,
          ),
          caption: const TextStyle(
            fontFamily: 'FontAwesome5Free',
            color: Colors.black,
            fontSize: 16,
          ),
          subtitle1: GoogleFonts.roboto(
            color: AppColors.lightGrey,
            fontSize: AppSizes.paragraphFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
