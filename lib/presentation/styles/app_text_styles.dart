import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final paragraph = GoogleFonts.roboto(
    color: AppColors.lightGrey,
    fontSize: 18,
  );

  static final title = GoogleFonts.playfairDisplay(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const drawerLink = TextStyle(
    fontSize: AppSizes.drawerFontSize,
    color: AppColors.white,
  );

  static const smileyTextStyle = TextStyle(
    fontFamily: 'FontAwesome5Free',
    color: Colors.black,
    fontSize: 16,
  );
}
