import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import './graph_screen.dart';

class IntroScreen extends StatefulWidget {
  // IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  Function goToTab;

  @override
  void initState() {
    super.initState();

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

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,
      backgroundColorAllSlides: Colors.white,
      onDonePress: () => Navigator.of(context).pushNamed(GraphScreen.routeName),
    );
  }
}
