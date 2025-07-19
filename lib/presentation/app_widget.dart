import 'package:bristol_stool_chart/l10n/app_localizations.dart';
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
        updateFailed: (_) async {
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
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.blue,
          primary: AppColors.blue,
          surface: AppColors.white,
        ).copyWith(
          secondary: AppColors.blue,
        ),
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.blue,
          foregroundColor: AppColors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blue,
            foregroundColor: AppColors.white,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.blue,
          ),
        ),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.roboto(
            fontSize: AppSizes.titleFontSize,
            fontWeight: FontWeight.bold,
            // Removed color specification to use default
          ),
          displayMedium: GoogleFonts.playfairDisplay(
            fontSize: AppSizes.titleFontSize,
            fontWeight: FontWeight.bold,
            // Removed color specification to use default
          ),
          displaySmall: TextStyle(
            fontSize: AppSizes.titleFontSize,
            color: AppColors.white,
          ),
          headlineMedium: TextStyle(
            fontSize: AppSizes.paragraphFontSize,
            decoration: TextDecoration.underline,
            // Removed color specification to use default
          ),
          bodyLarge: GoogleFonts.roboto(
            color: AppColors.grey,
            fontSize: AppSizes.paragraphFontSize,
          ),
          bodyMedium: TextStyle(
            fontSize: AppSizes.paragraphFontSize,
            color: AppColors.white,
          ),
          bodySmall: TextStyle(
            fontFamily: 'FontAwesome5Free',
            color: Colors.black,
            fontSize: 16,
          ),
          titleMedium: GoogleFonts.roboto(
            //color: AppColors.lightGrey,
            fontSize: AppSizes.paragraphFontSize,
            //fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
