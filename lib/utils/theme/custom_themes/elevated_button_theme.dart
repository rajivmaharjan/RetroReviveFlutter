// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import "package:flutter/material.dart";

class TElevatedbtntheme {
  TElevatedbtntheme._();

  static final LightEvevatedbtntheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.green,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static final darkElevatedbtntheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    disabledForegroundColor: Colors.grey,
    disabledBackgroundColor: Colors.grey,
    side: const BorderSide(color: Colors.blue),
    padding: const EdgeInsets.symmetric(vertical: 18),
    textStyle: const TextStyle(
        fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ));
}
