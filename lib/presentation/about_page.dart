import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:bristol_stool_chart/presentation/widgets/heading.dart';
import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
import 'package:bristol_stool_chart/presentation/widgets/paragraph.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.small,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Heading(text: 'What is the Bristol Stool Chart?'),
                Paragraph(
                  text:
                      'The Bristol Stool Chart is a medical aid designed to classify the form of human stools into seven categories.\nThis app turns the Bristol Stool Chart into a handy tool to track the quality of your bowel movements over time. \nThis can be useful if you are monitoring your general intestinal health or monitoring the effects of other factors on your digestive system, such as new medication, caffeine or alcohol.',
                ),
                Heading(text: 'How does the app work?'),
                Paragraph(
                  text:
                      'Each time your bowels move you can record the time and stool quality using the app.\nThis information is saved to your device, and the app builds up a graph of your intestinal health over time.\nThis graph can be shared with your health professional if you are concerned about any aspect of your health. Simply tap the Share button below the graph.',
                ),
                Heading(text: 'Thank you'),
                Paragraph(
                  text:
                      'Thank you for downloading this app. Hopefully you will find it useful in monitoring your intestinal health.',
                ),
                Heading(text: 'Feature requests'),
                Paragraph(
                  text:
                      'Is there something crucial missing from the app?\nSomething annoying about it?\nDo you have a great idea for an enhancement?\n\nOr any other feedback, good or bad?\n\nThen please let me know, I'
                      '\'d love to hear from you!\n\nYou can contact me directly at:\n\ndavid@web-garden.co.uk',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
