import 'package:flutter/material.dart';
import 'package:projeto_layout_flutter/components/sections/account_actions.dart';
import 'package:projeto_layout_flutter/components/sections/account_points.dart';
import 'package:projeto_layout_flutter/components/sections/recent_actity.dart';
import 'package:projeto_layout_flutter/components/sections/header_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Container(), title: Text("KoderSolutions Bank"),),
      body: ListView(
        children: [Column(
          children: <Widget>[
            HeaderComponent(),
            RecentActity(),
            AccountActions(),
            AccountPoints(),
          ],
        ),]
      ),
    );
  }
}
