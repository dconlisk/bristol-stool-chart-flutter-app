import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/presentation/widgets/heading.dart';
import 'package:bristol_stool_chart/presentation/widgets/link_to_website.dart';
import 'package:bristol_stool_chart/presentation/widgets/paragraph.dart';
import 'package:flutter/material.dart';

class GraphInfoPage extends StatelessWidget {
  const GraphInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: const [
            CloseButton(),
          ],
          title: const Text('About the graph')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Heading(
                  text: 'What the graph tells you',
                ),
                AppPadding.sizedBoxVerticalRegular,
                Paragraph(
                  text:
                      'In general, it is best if your stool quality stays close to the green line on the graph. If it tends towards the edges, '
                      'i.e. towards type 1 or towards type 7, then you may be experiencing issues with your digestive system. It is recommended that you '
                      'consult your health professional if you are consistently recording events towards the top or bottom of the graph.',
                ),
                AppPadding.sizedBoxVerticalRegular,
                Paragraph(
                  text:
                      'Types 1 and 2 indicate constipation, types 3 and 4 are usually the most comfortable to pass, '
                      'types 5 and 6 tend to be associated with urgency and type 7 is diarrhea.',
                ),
                AppPadding.sizedBoxVerticalRegular,
                Paragraph(
                  text:
                      'For more information on each type of stool, please tap on the following links to the Bristol Stool Chart website:',
                ),
                AppPadding.sizedBoxVerticalRegular,
                LinkToWebsite(type: 1),
                LinkToWebsite(type: 2),
                LinkToWebsite(type: 3),
                LinkToWebsite(type: 4),
                LinkToWebsite(type: 5),
                LinkToWebsite(type: 6),
                LinkToWebsite(type: 7),
                Heading(
                  text: 'Zooming the graph',
                ),
                AppPadding.sizedBoxVerticalRegular,
                Paragraph(
                  text:
                      'You can zoom in on the graph in two ways: you can put two fingers on the graph and spread them, or you can double-tap the graph. Double-tapping again will unzoom the graph. '
                      'When the graph is zoomed in you can also scroll back and forth in the usual way (with a single finger swiping left or right on the graph). '
                      'If you are planning on sharing the graph image, you can zoom and scroll until what you see on the screen is exactly what you would like to share.',
                ),
                AppPadding.sizedBoxVerticalRegular,
                Heading(
                  text: 'Sharing your data',
                ),
                AppPadding.sizedBoxVerticalRegular,
                Paragraph(
                  text:
                      'You can share your data by tapping the Share button below the graph. Remember that you can zoom and scroll the graph to make sure it is displaying the information that you would like to share. '
                      'The share function uses other apps on your device to share the files (a picture of the graph and a spreadsheet of the data). You will be presented with a list of apps based on the apps that are installed on your device.',
                ),
                AppPadding.sizedBoxVerticalRegular,
                Paragraph(
                  text:
                      'NOTE: if you do not have a compatible app installed to share the data (e.g. the Google Mail app or similar) an error message will be displayed.',
                ),
                AppPadding.sizedBoxVerticalRegular,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
