import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/application/shared_preferences_keys.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/presentation/styles/app_text_styles.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.gr.dart';

class IntroPage extends ConsumerWidget {
  final _slides = [
    Slide(
      backgroundColor: Colors.white,
      pathImage: 'assets/images/intro_healthy_patient.png',
      title: "Welcome",
      styleTitle: AppTextStyles.title,
      description:
          "This app is a simple tool to allow you to track your bowel movements and to share that data with your health professional.",
      styleDescription: AppTextStyles.paragraph,
    ),
    Slide(
      backgroundColor: Colors.white,
      pathImage: 'assets/images/intro_use_app.png',
      title: "How it works",
      styleTitle: AppTextStyles.title,
      description:
          "Use the add button on the graph to add a stool. Swipe left or right until you find the right image. Set the time if you need to change it. "
          "You can also use the Settings section to enable the blood in stool tracking feature if that is of use to you. Tap the save button to save and return to the graph.",
      styleDescription: AppTextStyles.paragraph,
    ),
    Slide(
      backgroundColor: Colors.white,
      pathImage: 'assets/images/intro_share_data.png',
      title: "Share your data",
      styleTitle: AppTextStyles.title,
      description:
          "To share your data, tap the share button under the graph. This will allow you to send your graph and data to your chosen contact via your chosen app.",
      styleDescription: AppTextStyles.paragraph,
    ),
  ];

  IntroPage({Key? key}) : super(key: key);

  Widget _renderDoneBtn() {
    return _renderButton(buttonText: 'DONE');
  }

  Widget _renderNextBtn() {
    return _renderButton(buttonText: 'NEXT');
  }

  Widget _renderSkipBtn() {
    return const Text(
      'SKIP',
      style: TextStyle(color: Colors.blue),
    );
  }

  Widget _renderButton({
    required String buttonText,
  }) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: AppPadding.borderRadius,
        color: Colors.blue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Future<void> _savePreferencesAndGoToGraph(BuildContext context) async {
    // Record the fact that the intro slider has been seen or skipped and navigate to the graph screen
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(sharedPreferencesHasSeenIntroKey, true);
    AutoRouter.of(context).push(const GraphRoute());
  }

  @override
  Widget build(context, ref) {
    // Use Future.delayed to delay the intro notifier check for errors until after the build cycle has completed
    // Using Future.deplayed moves the code to the end of the queue for Dart's single-threaded event loop
    Future.delayed(Duration.zero, () {
      final state = ref.watch(introNotifierProvider);

      state.maybeMap(
        importFailed: (e) {
          showDialog<AlertDialog>(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('An error occurred'),
              content: const Text(
                  'Unfortunately we could not import your data from the previous version of the app. We apologise for any inconvenience caused.'),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text('OK'),
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

    return IntroSlider(
      slides: _slides,
      renderNextBtn: _renderNextBtn(),
      renderDoneBtn: _renderDoneBtn(),
      renderSkipBtn: _renderSkipBtn(),
      onDonePress: () async => await _savePreferencesAndGoToGraph(context),
      onSkipPress: () async => await _savePreferencesAndGoToGraph(context),
      colorActiveDot: Colors.blue,
    );
  }
}
