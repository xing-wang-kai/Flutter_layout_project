import 'package:flutter/material.dart';

class BoxCardComponent extends StatelessWidget {

  final Widget boxContent;
  const BoxCardComponent({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
      ),
      child: boxContent,
    );
  }
}
