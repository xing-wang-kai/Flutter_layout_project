import 'package:flutter/material.dart';
import 'package:projeto_layout_flutter/components/box_card_component.dart';
import 'package:projeto_layout_flutter/components/sections/header_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Container(), title: Text("KoderSolutions Bank"),),
      body: Column(
        children: <Widget>[
          HeaderComponent(),
          BoxCardComponent(boxContent: Text("olá mundo")),
          BoxCardComponent(boxContent: Text("Box card 2")),
          BoxCardComponent(boxContent: Text("Box Card 3")),
        ],
      ),
    );
  }
}
