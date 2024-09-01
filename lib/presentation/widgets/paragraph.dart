import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String text;
  const Paragraph({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
