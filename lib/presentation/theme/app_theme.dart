import 'package:chateo/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: lightColor,
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );
}

ThemeData buildDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: darkColor,
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );
}
