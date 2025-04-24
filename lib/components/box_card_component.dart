import 'package:flutter/material.dart';
import 'package:projeto_layout_flutter/themes/themes_colors.dart';

class BoxCardComponent extends StatelessWidget {

  final Widget boxContent;
  const BoxCardComponent({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(10),
        color: ThemeColors.cardColor,
      ),
      child: boxContent,
    );
  }
}
