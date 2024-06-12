// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TColors {
  TColors._(); // private constructor

// app basic colors
  static Color primaryColor = Color(0xFF124210);
  static Color secondary = Color(0XFFB43018);
  static Color accent = Color(0xFFB8B8B8);
  static Color primary = Color(0xFF6EAB36);

//gradient color

  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0.7808, -0.7808),
    colors: [Color(0xFF333333), Color(0xFF333333), Color(0xFF333333)],
  );
  // text colors
  static Color textPrimary = Color(0xFF333333);
  static Color textSecondary = Color(0xFF6C757D);
  static Color textWhite = Colors.white;

  // background colors
  static Color light = Color(0xFFF6F6F6);
  static Color dark = Color(0xFF272727);
  static Color primaryBackground = Color(0xFFF3F5FF);

  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = Colors.white.withOpacity(0.1);
// Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);
// Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

// Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

// Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softgrey = Color(0xFFF4F4F4);
  static const Color lightgrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xFFD32F2F);

  //appbarnotifiction colors
  static const Color notificationColor = Color(0xFFB8B8B8);
}
