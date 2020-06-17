import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './graph_screen.dart';

class IntroScreen extends StatefulWidget {
  static const routeName = '/intro';

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> _slides = new List();

  @override
  void initState() {
    super.initState();

    _slides.add(
      new Slide(
        backgroundColor: Colors.white,
        pathImage: 'assets/images/intro_healthy_patient.png',
        title: "Welcome",
        styleTitle: GoogleFonts.playfairDisplay(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        description: "This app is a simple tool to allow you to track your bowel movements and to share that data with your health professional.",
        styleDescription: GoogleFonts.roboto(
          color: Color.fromRGBO(0, 0, 0, 0.38),
          fontSize: 18,
        ),
      ),
    );
    _slides.add(
      new Slide(
        backgroundColor: Colors.white,
        pathImage: 'assets/images/intro_use_app.png',
        title: "How it works",
        styleTitle: GoogleFonts.playfairDisplay(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        description: "Use the add button on the graph to add a stool. Swipe left or right until you find the right image. Set the time if you need to change it. "
        "You can also use the Settings section to enable the blood in stool tracking feature if that is of use to you. Tap the save button to save and return to the graph.",
        styleDescription: GoogleFonts.roboto(
          color: Color.fromRGBO(0, 0, 0, 0.38),
          fontSize: 18,
        ),
      ),
    );
    _slides.add(
      new Slide(
        backgroundColor: Colors.white,
        pathImage: 'assets/images/intro_share_data.png',
        title: "Share your data",
        styleTitle: GoogleFonts.playfairDisplay(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        description: "To share your data, tap the share button under the graph. This will allow you to send your graph and data to your chosen contact via your chosen app.",
        styleDescription: GoogleFonts.roboto(
          color: Color.fromRGBO(0, 0, 0, 0.38),
          fontSize: 18,
        ),
      ),
    );
  }

  Future<void> savePreferencesAndGoToGraph() async {
    // Record the fact that the intro slider has been seen or skipped and navigate to the graph screen
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('intro_seen', true);
    Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new GraphScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this._slides,
      borderRadiusDoneBtn: 12,
      borderRadiusSkipBtn: 12,
      colorSkipBtn: Theme.of(context).primaryColor,
      colorDoneBtn: Theme.of(context).primaryColor,
      onDonePress: savePreferencesAndGoToGraph,
      onSkipPress: savePreferencesAndGoToGraph,
    );
  }
}
