import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './graph_screen.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    checkIntroSeen();

    slides.add(
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
    slides.add(
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
    slides.add(
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

  Future<void> checkIntroSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('intro_seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new GraphScreen()));
    }
  }

  Future<void> goToGraph() async {
    // Record the fact that the intro slider has been seen or skipped and navigate to the graph screen
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('intro_seen', true);
    Navigator.of(context).pushNamed(GraphScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,
      backgroundColorAllSlides: Colors.white,
      onDonePress: goToGraph,
      onSkipPress: goToGraph,
    );
  }
}
