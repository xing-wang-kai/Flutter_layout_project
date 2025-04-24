import 'package:flutter/cupertino.dart';
import 'package:projeto_layout_flutter/themes/themes_colors.dart';

class ContentDivision extends StatelessWidget {
  const ContentDivision({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColors.divisionColor)
      ),
    );
  }
}

