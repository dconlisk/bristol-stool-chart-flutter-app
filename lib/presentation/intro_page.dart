import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/application/shared_preferences_keys.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.gr.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroPage extends ConsumerWidget {
  List<ContentConfig> _getContentConfigs(BuildContext context) {
    return [
      ContentConfig(
        backgroundColor: Colors.white,
        pathImage: 'assets/images/intro_healthy_patient.png',
        title: AppLocalizations.of(context)!.introPageTitle1,
        styleTitle: Theme.of(context).textTheme.headline2,
        description: AppLocalizations.of(context)!.introPageDescription1,
        styleDescription: Theme.of(context).textTheme.bodyText1,
      ),
      ContentConfig(
        backgroundColor: Colors.white,
        pathImage: 'assets/images/intro_use_app.png',
        title: AppLocalizations.of(context)!.introPageTitle2,
        styleTitle: Theme.of(context).textTheme.headline2,
        description: AppLocalizations.of(context)!.introPageDescription2,
        styleDescription: Theme.of(context).textTheme.bodyText1,
      ),
      ContentConfig(
        backgroundColor: Colors.white,
        pathImage: 'assets/images/intro_share_data.png',
        title: AppLocalizations.of(context)!.introPageTitle3,
        styleTitle: Theme.of(context).textTheme.headline2,
        description: AppLocalizations.of(context)!.introPageDescription3,
        styleDescription: Theme.of(context).textTheme.bodyText1,
      ),
    ];
  }

  const IntroPage({Key? key}) : super(key: key);

  Widget _renderTextButton({required String buttonText}) {
    return Text(
      buttonText,
      style: const TextStyle(color: Colors.blue),
    );
  }

  Widget _renderButton({
    required BuildContext context,
    required String buttonText,
  }) {
    // Need to clamp the text size so that the text is visible when user is using very large text
    final mediaQueryData = MediaQuery.of(context);
    final num constrainedTextScaleFactor =
        mediaQueryData.textScaleFactor.clamp(1.0, 1.5);

    return Container(
      decoration: const BoxDecoration(
        borderRadius: AppPadding.borderRadius,
        color: Colors.blue,
      ),
      child: Padding(
        padding: AppPadding.small,
        child: MediaQuery(
          data: mediaQueryData.copyWith(
            textScaleFactor: constrainedTextScaleFactor as double?,
          ),
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Future<void> _savePreferencesAndGoToGraph(StackRouter router) async {
    // Record the fact that the intro slider has been seen or skipped and navigate to the graph screen
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(sharedPreferencesHasSeenIntroKey, true);
    router.replaceAll([const GraphRoute()]);
  }

  @override
  Widget build(context, ref) {
    // Use Future.delayed to delay the intro notifier check for errors until after the build cycle has completed
    // Using Future.delayed moves the code to the end of the queue for Dart's single-threaded event loop
    Future.delayed(Duration.zero, () {
      final state = ref.watch(introNotifierProvider);

      state.maybeMap(
        importFailed: (e) {
          showDialog<AlertDialog>(
            context: context,
            builder: (_) => AlertDialog(
              title: Text(
                AppLocalizations.of(context)!.errorOccurredTitle,
                maxLines: 2,
                overflow: TextOverflow.visible,
                softWrap: true,
              ),
              content: Text(
                AppLocalizations.of(context)!.dataImportErrorOccurredMessage,
              ),
              actions: <Widget>[
                ElevatedButton(
                  child: Text(
                    AppLocalizations.of(context)!.continueButtonText,
                  ),
                  onPressed: () {
                    context.router.pop();
                  },
                )
              ],
            ),
          );
        },
        orElse: () {},
      );
    });

    final router = AutoRouter.of(context);

    return IntroSlider(
      listContentConfig: _getContentConfigs(context),
      renderNextBtn: _renderButton(
          context: context,
          buttonText: AppLocalizations.of(context)!.nextButtonText),
      renderDoneBtn: _renderButton(
          context: context,
          buttonText: AppLocalizations.of(context)!.doneButtonText),
      renderSkipBtn: _renderTextButton(
          buttonText: AppLocalizations.of(context)!.skipButtonText),
      onDonePress: () async => await _savePreferencesAndGoToGraph(router),
      onSkipPress: () async => await _savePreferencesAndGoToGraph(router),
      //colorActiveDot: Colors.blue,
    );
  }
}
