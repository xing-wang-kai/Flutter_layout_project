import 'package:flutter/material.dart';
import 'package:projeto_layout_flutter/components/box_card_component.dart';
import 'package:projeto_layout_flutter/components/colored_dot.dart';
import 'package:projeto_layout_flutter/components/content_division.dart';
import 'package:projeto_layout_flutter/themes/themes_colors.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              "Pontos da Conta",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BoxCardComponent(
            boxContent: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0, top: 16),
                  child: Text(
                    "Pontos totais:",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                  child: Text(
                    "3000",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ContentDivision(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                  child: Text(
                    "Objetivos: ",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                _PointDetails(color: ThemeColors.accountPointColors['free-shipping'],text: "Entrega Grátis: 15000pts",),
                _PointDetails(color: ThemeColors.accountPointColors['moth-streaming'], text: "Um mês de Streaming: 30000pts")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PointDetails extends StatelessWidget {

  final Color? color;
  final String text;
  const _PointDetails({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: ColoredDot(color: color),
          ),
          Text(text, style: Theme.of(context).textTheme.titleMedium,)
        ],
      ),
    );
  }
}

