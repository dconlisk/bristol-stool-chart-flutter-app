import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/infrastructure/keys.dart';
import 'package:bristol_stool_chart/presentation/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.gr.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final _slides = <Slide>[];

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
      // color: Colors.blue,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
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

  @override
  void initState() {
    super.initState();
    _slides.add(
      Slide(
        backgroundColor: Colors.white,
        pathImage: 'assets/images/intro_healthy_patient.png',
        title: "Welcome",
        styleTitle: AppTextStyles.title,
        description:
            "This app is a simple tool to allow you to track your bowel movements and to share that data with your health professional.",
        styleDescription: AppTextStyles.paragraph,
      ),
    );
    _slides.add(
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
    );
    _slides.add(
      Slide(
        backgroundColor: Colors.white,
        pathImage: 'assets/images/intro_share_data.png',
        title: "Share your data",
        styleTitle: AppTextStyles.title,
        description:
            "To share your data, tap the share button under the graph. This will allow you to send your graph and data to your chosen contact via your chosen app.",
        styleDescription: AppTextStyles.paragraph,
      ),
    );
  }

  Future<void> _savePreferencesAndGoToGraph() async {
    // Record the fact that the intro slider has been seen or skipped and navigate to the graph screen
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(sharedPreferencesHasSeenIntroKey, true);
    AutoRouter.of(context).push(const GraphRoute());
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: _slides,
      renderNextBtn: _renderNextBtn(),
      renderDoneBtn: _renderDoneBtn(),
      renderSkipBtn: _renderSkipBtn(),
      onDonePress: () async => await _savePreferencesAndGoToGraph(),
      onSkipPress: () async => await _savePreferencesAndGoToGraph(),
      colorActiveDot: Colors.blue,
    );
  }
}
