// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToutlinedButton {
  ToutlinedButton._(); // to avoid creating instances

  static final lighoutlinedbuttontheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.green),
      textStyle: TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );

  static final darkoutlinedbuttontheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.greenAccent),
      textStyle: TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
}
