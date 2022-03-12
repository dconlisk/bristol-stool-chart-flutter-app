import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueGrey,
      body: Padding(
        padding: AppPadding.extraLargeHorizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage('assets/images/drawer_logo.png'),
              width: 200,
              fit: BoxFit.cover,
            ),
            AppPadding.sizedBoxVerticalRegular,
            Center(
              child: CircularProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }
}
