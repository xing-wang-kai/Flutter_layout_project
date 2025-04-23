import 'package:flutter/material.dart';
import 'package:projeto_layout_flutter/screens/home_screen.dart';
import 'package:projeto_layout_flutter/themes/my_theme.dart';

void main() {
  runApp(const KoderSolutionsBank());
}

class KoderSolutionsBank extends StatelessWidget {
  const KoderSolutionsBank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "KoderSolutions Bank!",
      theme: MyTheme,
      home: HomeScreen(),

    );
  }
}

