import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  const Heading({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSizes.regular),
        Text(
          text,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: AppSizes.regular),
      ],
    );
  }
}
