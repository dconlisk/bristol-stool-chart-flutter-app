import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      drawer: MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.body1,
                children: <TextSpan>[
                  TextSpan(
                    text: 'What is the Bristol Stool Chart?',
                    style: Theme.of(context).textTheme.display2,
                  ),
                  TextSpan(
                    text:
                        '\r\n\r\nThe Bristol Stool Chart is a medical aid designed to classify the form of human stools into seven categories.'
                        '\r\n\r\nThis app turns the Bristol Stool Chart into a handy tool to track the quality of your bowel movements over time.'
                        '\r\n\r\nThis can be useful if you are monitoring your general intestinal health or monitoring the effects of other factors on your digestive system, such as new medication, caffeine or alcohol.\r\n\r\n',
                  ),
                  TextSpan(
                    text: 'How this app works',
                    style: Theme.of(context).textTheme.display2,
                  ),
                  TextSpan(
                    text:
                        '\r\n\r\nEach time your bowels move you can record the time and stool quality using the app.'
                        '\r\n\r\nThis information is saved to your device, and the app builds up a graph of your intestinal health over time.'
                        '\r\n\r\nThis graph can be shared with your health professional if you are concerned about any aspect of your health. Simply tap the Share button below the graph.'
                        '\r\n\r\nYour health professional can then use this information to make a more accurate assessment of your condition.'
                        '\r\n\r\nYou can view the graph once you have recorded at least two stools using the app.'
                        '\r\n\r\nWhen viewing the graph, you can use the information icon in the top right hand corner of the screen to get an explanation of what the graph means. '
                        '\r\n\r\nAt any time you can remove all of your data from the app and start again. You can find this feature in the Settings page of the app.\r\n\r\n',
                  ),
                  TextSpan(
                    text: 'Thank you',
                    style: Theme.of(context).textTheme.display2,
                  ),
                  TextSpan(
                    text:
                        '\r\n\r\nThank you for downloading this app. Hopefully you will find it a useful aid in monitoring your intestinal health.\r\n\r\n',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
