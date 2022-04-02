import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:bristol_stool_chart/presentation/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  const Heading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSizes.regular),
        Text(
          text,
          style: AppTextStyles.title,
        ),
        const SizedBox(height: AppSizes.regular),
      ],
    );
  }
}
