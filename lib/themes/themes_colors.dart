import 'package:flutter/material.dart';

class ThemeColors {
  static const Color primaryColor = Color.fromRGBO(190, 158, 68, 1.0);
  static const MaterialColor primaryColorTwo = Colors.yellow;
  static const List<Color> gradientColor = [
    Color.fromRGBO(216, 198, 144, 1.0),
    Color.fromRGBO(203, 179, 106, 1.0),
    primaryColor,
  ];
  static const recentActivity = {
    'spent': Color.fromRGBO(255, 175, 29, 1.0),
    'income': Color.fromRGBO(191, 69, 198, 1.0),
  };

  static const Color divisionColor = Color.fromRGBO(166, 166, 166, 1.0);
  static const Color cardColor = Color.fromRGBO(40, 44, 47, 1.0);
  static const accountPointColors = {
    'free-shipping': Color.fromRGBO(250, 0, 112, 1.0),
    'moth-streaming': Color.fromRGBO(75, 89, 191, 1.0)
  };

}