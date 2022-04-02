import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final paragraph = GoogleFonts.roboto(
    color: AppColors.lightGrey,
    fontSize: AppSizes.paragraphFontSize,
  );

  static final label = GoogleFonts.roboto(
    color: AppColors.lightGrey,
    fontSize: AppSizes.paragraphFontSize,
    fontWeight: FontWeight.bold,
  );

  static final introTitle = GoogleFonts.playfairDisplay(
    fontSize: AppSizes.titleFontSize,
    fontWeight: FontWeight.bold,
  );

  static final title = GoogleFonts.roboto(
    fontSize: AppSizes.titleFontSize,
    fontWeight: FontWeight.bold,
  );

  static const drawerLink = TextStyle(
    fontSize: AppSizes.titleFontSize,
    color: AppColors.white,
  );

  static const drawerText = TextStyle(
    fontSize: AppSizes.paragraphFontSize,
    color: AppColors.white,
  );

  static const smileyTextStyle = TextStyle(
    fontFamily: 'FontAwesome5Free',
    color: Colors.black,
    fontSize: 16,
  );
}
