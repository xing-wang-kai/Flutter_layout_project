import 'package:flutter/material.dart';
import 'package:projeto_layout_flutter/themes/themes_colors.dart';

ThemeData MyTheme = ThemeData(
  primaryColor: ThemeColors.primaryColor,
  primarySwatch: ThemeColors.primaryColorTwo,
  brightness: Brightness.dark,
  fontFamily: 'Raleway',
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 16),
    bodyLarge: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)
  ),
);
