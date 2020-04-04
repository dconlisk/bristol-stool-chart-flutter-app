import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GraphInformationScreen extends StatelessWidget {
  static const routeName = '/graph-info';

  Future<void> _openUrl(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About the graph'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: <Widget>[
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.body1,
              children: <TextSpan>[
                TextSpan(
                  text: 'What the graph tells you',
                  style: Theme.of(context).textTheme.display2,
                ),
                TextSpan(
                  text:
                      '\r\n\r\nIn general, it is best if your stool quality stays mostly within the green area of the graph. If it tends towards the red areas, '
                      'i.e. towards type 1 or towards type 7, then you may be experiencing issues with your digestive system. It is recommended that you '
                      'consult your health professional if you are consistently recording events in the red areas of the graph.\r\n\r\nTypes 1 and 2 indicate '
                      'constipation, types 3 and 4 are usually the most comfortable to pass, types 5 and 6 tend to be associated with urgency and type 7 is '
                      'diarrhea.\r\n\r\nFor more information on each type of stool, please use the following links:\r\n\r\n',
                ),
                TextSpan(
                  text: 'Type 1',
                  style: Theme.of(context).textTheme.display3,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () =>
                        _openUrl('https://bristolstoolchart.net/type-one'),
                ),
                TextSpan(text: '\r\n\r\n'),
                TextSpan(
                  text: 'Type 2',
                  style: Theme.of(context).textTheme.display3,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () =>
                        _openUrl('https://bristolstoolchart.net/type-two'),
                ),
                TextSpan(text: '\r\n\r\n'),
                TextSpan(
                  text: 'Type 3',
                  style: Theme.of(context).textTheme.display3,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () =>
                        _openUrl('https://bristolstoolchart.net/type-three'),
                ),
                TextSpan(text: '\r\n\r\n'),
                TextSpan(
                  text: 'Type 4',
                  style: Theme.of(context).textTheme.display3,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () =>
                        _openUrl('https://bristolstoolchart.net/type-four'),
                ),
                TextSpan(text: '\r\n\r\n'),
                TextSpan(
                  text: 'Type 5',
                  style: Theme.of(context).textTheme.display3,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () =>
                        _openUrl('https://bristolstoolchart.net/type-five'),
                ),
                TextSpan(text: '\r\n\r\n'),
                TextSpan(
                  text: 'Type 6',
                  style: Theme.of(context).textTheme.display3,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () =>
                        _openUrl('https://bristolstoolchart.net/type-six'),
                ),
                TextSpan(text: '\r\n\r\n'),
                TextSpan(
                  text: 'Type 7',
                  style: Theme.of(context).textTheme.display3,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () =>
                        _openUrl('https://bristolstoolchart.net/type-seven'),
                ),
                TextSpan(text: '\r\n\r\n'),
                TextSpan(
                  text: 'Zooming the graph',
                  style: Theme.of(context).textTheme.display2,
                ),
                TextSpan(
                  text:
                      '\r\n\r\nYou can zoom in on the graph in two ways: you can put two fingers on the graph and spread them, or you can double-tap the graph. Double-tapping again will unzoom the graph. '
                      '\r\n\r\nWhen the graph is zoomed in you can also scroll back and forth in the usual way (with a single finger swiping left or right on the graph). '
                      '\r\n\r\nIf you are planning on sharing the graph image, you can zoom and scroll until what you see on the screen is exactly what you would like to share.\r\n\r\n',
                ),
                TextSpan(
                  text: 'Sharing the graph',
                  style: Theme.of(context).textTheme.display2,
                ),
                TextSpan(
                  text:
                      '\r\n\r\nYou can share the graph by tapping the Share button below the graph. Remember that you can zoom and scroll the graph to make sure it is displaying the information that you would like to share. '
                      '\r\n\r\nWhen you click the Share button, there are 3 options to choose from. Tap "Share image" to share the visible part of the graph as an image. Tap "Share data only" to share your graph data as a comma separated '
                      'values (csv) spreadsheet. Tap "Share both image and data" to share both the image and the spreadsheet. '
                      '\r\n\r\nThe share function uses other apps on your device to share the files. You will be presented with a list of apps based on what apps are installed on your device.\r\n\r\n',
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
