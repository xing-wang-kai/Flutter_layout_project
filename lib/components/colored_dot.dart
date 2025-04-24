import 'package:flutter/material.dart';

class ColoredDot extends StatelessWidget {
  final Color? color;

  const ColoredDot({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.0,
      height: 10.0,
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
