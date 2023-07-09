import 'package:bristol_stool_chart/presentation/routes/app_router.dart';
import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:dartz/dartz.dart';
import 'package:bristol_stool_chart/application/intro_notifier.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final initializationProvider = FutureProvider((ref) async {
  await ref.read(sembastProvider).init();
  await ref.read(introNotifierProvider.notifier).initialise();
  return unit;
});

class AppWidget extends ConsumerWidget {
  final _appRouter = AppRouter();

  AppWidget({super.key});

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
      routerConfig: _appRouter.config(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      theme: ThemeData(
        primarySwatch: AppColors.blue,
        scaffoldBackgroundColor: AppColors.white,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.roboto(
            fontSize: AppSizes.titleFontSize,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: GoogleFonts.playfairDisplay(
            fontSize: AppSizes.titleFontSize,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: const TextStyle(
            fontSize: AppSizes.titleFontSize,
            color: AppColors.white,
          ),
          headlineMedium: const TextStyle(
            color: AppColors.blue,
            fontSize: AppSizes.paragraphFontSize,
            decoration: TextDecoration.underline,
          ),
          bodyLarge: GoogleFonts.roboto(
            color: AppColors.grey,
            fontSize: AppSizes.paragraphFontSize,
          ),
          bodyMedium: const TextStyle(
            fontSize: AppSizes.paragraphFontSize,
            color: AppColors.white,
          ),
          bodySmall: const TextStyle(
            fontFamily: 'FontAwesome5Free',
            color: Colors.black,
            fontSize: 16,
          ),
          titleMedium: GoogleFonts.roboto(
            color: AppColors.lightGrey,
            fontSize: AppSizes.paragraphFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
