import 'package:flutter/material.dart';
import 'package:projeto_layout_flutter/themes/themes_colors.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColors.gradientColor,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
          top: 80,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text.rich(
                  TextSpan(
                    text: "\$",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: "1000.00",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Saldo disponível",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            Icon(Icons.account_circle_rounded, size: 42, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
