// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import "package:retroreviveapp/utils/theme/custom_themes/appbar_theme.dart";
import "package:retroreviveapp/utils/theme/custom_themes/bottom_sheet.dart";
import "package:retroreviveapp/utils/theme/custom_themes/checkbox_theme.dart";
import "package:retroreviveapp/utils/theme/custom_themes/elevated_button_theme.dart";
import "package:retroreviveapp/utils/theme/custom_themes/outlined_button_theme.dart";
import "package:retroreviveapp/utils/theme/custom_themes/text_field.dart";
import "package:retroreviveapp/utils/theme/custom_themes/text_theme.dart";

class TAppTheme {
  TAppTheme._(); // constructor is private so now we need to use static function

  static ThemeData LightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedbtntheme.LightEvevatedbtntheme,
    appBarTheme: TAppbarTheme.LightAppBarTheme,
    checkboxTheme: TCheckboxtheme.lightcheckboxtheme,
    bottomSheetTheme: TBottomTheme.lightBottomSheet,
    outlinedButtonTheme: ToutlinedButton.lighoutlinedbuttontheme,
    inputDecorationTheme: Ttextfromfieldtheme.lightinputdecoration,
    // treated as a diffrent screen
  ); // variable of static
  static ThemeData DarkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedbtntheme.darkElevatedbtntheme,
    appBarTheme: TAppbarTheme.darkAppbarTheme,
    checkboxTheme: TCheckboxtheme.darkcheckboxtheme,
    bottomSheetTheme: TBottomTheme.darkBottomSheet,
    outlinedButtonTheme: ToutlinedButton.darkoutlinedbuttontheme,
    inputDecorationTheme: Ttextfromfieldtheme.darkinputdecoration,
  ); // variable of static
}
