import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:bristol_stool_chart/presentation/styles/app_text_styles.dart';
import 'package:bristol_stool_chart/presentation/widgets/heading.dart';
import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
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
              children: [
                const Heading(text: 'What is the Bristol Stool Chart?'),
                Text(
                  'The Bristol Stool Chart is a medical aid designed to classify the form of human stools into seven categories.\nThis app turns the Bristol Stool Chart into a handy tool to track the quality of your bowel movements over time. \nThis can be useful if you are monitoring your general intestinal health or monitoring the effects of other factors on your digestive system, such as new medication, caffeine or alcohol.',
                  style: AppTextStyles.paragraph,
                ),
                const Heading(text: 'How does the app work?'),
                Text(
                  'Each time your bowels move you can record the time and stool quality using the app.\nThis information is saved to your device, and the app builds up a graph of your intestinal health over time.\nThis graph can be shared with your health professional if you are concerned about any aspect of your health. Simply tap the Share button below the graph.',
                  style: AppTextStyles.paragraph,
                ),
                const Heading(text: 'Thank you'),
                Text(
                  'Thank you for downloading this app. Hopefully you will find it useful in monitoring your intestinal health.',
                  style: AppTextStyles.paragraph,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
