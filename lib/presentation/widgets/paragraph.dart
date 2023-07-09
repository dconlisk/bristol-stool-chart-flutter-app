import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String text;
  const Paragraph({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
