import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_color/utils/custom_colors.dart';

final appTheme = ThemeData(
  primaryColor: CustomColors.primary,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
      color: Colors.black,
    ),
  ),
);
