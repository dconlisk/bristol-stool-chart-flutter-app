import 'package:bristol_stool_chart/presentation/widgets/heading.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Heading(
                text: 'What the graph tells you',
              ),
              const Text(
                'In general, it is best if your stool quality stays mostly within the green area of the graph. If it tends towards the red areas, '
                'i.e. towards type 1 or towards type 7, then you may be experiencing issues with your digestive system. It is recommended that you '
                'consult your health professional if you are consistently recording events in the red areas of the graph.',
              ),
              const Text('Types 1 and 2 indicate '
                  'constipation, types 3 and 4 are usually the most comfortable to pass, types 5 and 6 tend to be associated with urgency and type 7 is '
                  'diarrhea.'),
              const Text(
                  'For more information on each type of stool, please use the following links:'),
              ExternalLink(url: 'url', text: 'Type 1'),
              const Heading(
                text: 'Zooming the graph',
              ),
              const Text(
                'You can zoom in on the graph in two ways: you can put two fingers on the graph and spread them, or you can double-tap the graph. Double-tapping again will unzoom the graph. '
                'When the graph is zoomed in you can also scroll back and forth in the usual way (with a single finger swiping left or right on the graph). '
                'If you are planning on sharing the graph image, you can zoom and scroll until what you see on the screen is exactly what you would like to share.',
              ),
              const Heading(
                text: 'Sharing your data',
              ),
              const Text(
                'You can share your data by tapping the Share button below the graph. Remember that you can zoom and scroll the graph to make sure it is displaying the information that you would like to share. '
                'The share function uses other apps on your device to share the files (a picture of the graph and a spreadsheet of the data). You will be presented with a list of apps based on what apps are installed on your device.\r\n'
                'NOTE: if you do not have a compatible app installed to share the data (e.g. the Google Mail app or similar) an error message will be displayed.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExternalLink extends StatelessWidget {
  final String url;
  final String text;

  const ExternalLink({
    Key? key,
    required this.url,
    required this.text,
  }) : super(key: key);

  Future<void> _openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(text),
      onTap: () => _openUrl(url),
    );
  }
}
