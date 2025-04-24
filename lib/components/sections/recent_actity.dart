import 'package:flutter/material.dart';
import 'package:projeto_layout_flutter/components/box_card_component.dart';
import 'package:projeto_layout_flutter/components/colored_dot.dart';
import 'package:projeto_layout_flutter/components/content_division.dart';
import 'package:projeto_layout_flutter/themes/themes_colors.dart';

class RecentActity extends StatelessWidget {
  const RecentActity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: BoxCardComponent(
        boxContent: _RecentActityContent(),
        // boxContent: ColoredDot(color: ThemeColors.recentActivity["spent"]),
      ),
    );
  }
}

class _RecentActityContent extends StatelessWidget {
  const _RecentActityContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: ColoredDot(color: ThemeColors.recentActivity["spent"]),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Saída",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      "\$99000.97",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: ColoredDot(
                    color: ThemeColors.recentActivity["income"],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Entrada",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      "\$9332.35",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text(
            "Limite de Gastos: \$432.90",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: LinearProgressIndicator(value: 0.3, minHeight: 8.0, color: ThemeColors.recentActivity['income'],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: Text(
            "Esse mês você gastou \$1500.00 com jogos. Tente baixar esse custo!",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        TextButton(onPressed: (){}, child: Text("Diga-me como!", style: TextStyle(color: ThemeColors.recentActivity['income']),))
      ],
    );
  }
}
