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
        pathImage: 'assets/images/healthy_patient.png',
        title: "Welcome",
        styleTitle: GoogleFonts.playfairDisplay(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        description: "Track your movements and be super healthy",
        styleDescription: GoogleFonts.roboto(
          color: Color(0x61000000),
          fontSize: 18,
        ),
      ),
    );
    _slides.add(
      new Slide(
        pathImage: 'assets/images/healthy_patient.png',
        title: "Welcome",
        styleTitle: GoogleFonts.playfairDisplay(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        description: "Track your movements and be super healthy",
        styleDescription: GoogleFonts.roboto(
          color: Color(0x61000000),
          fontSize: 18,
        ),
      ),
    );
    _slides.add(
      new Slide(
        pathImage: 'assets/images/healthy_patient.png',
        title: "Welcome",
        styleTitle: GoogleFonts.playfairDisplay(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        description: "Track your movements and be super healthy",
        styleDescription: GoogleFonts.roboto(
          color: Color(0x61000000),
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
      // List slides
      slides: this._slides,
      backgroundColorAllSlides: Colors.white,
      onDonePress: savePreferencesAndGoToGraph,
      onSkipPress: savePreferencesAndGoToGraph,
    );
  }
}
