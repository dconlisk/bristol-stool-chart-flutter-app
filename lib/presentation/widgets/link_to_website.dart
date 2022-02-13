import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkToWebsite extends StatelessWidget {
  final int type;

  const LinkToWebsite({
    Key? key,
    required this.type,
  }) : super(key: key);

  Future<void> _openUrl(int type) async {
    final typeNames = ['one', 'two', 'three', 'four', 'five', 'six', 'seven'];
    String url = 'https://bristolstoolchart.net/type-${typeNames[type - 1]}';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Text('Type $type'),
        onTap: () => _openUrl(type),
      ),
    );
  }
}
