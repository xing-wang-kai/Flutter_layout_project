import 'package:flutter/material.dart';
import 'package:projeto_layout_flutter/components/box_card_component.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

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
              "Ações da Conta",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: _BoxActions(
                  icon: Icons.account_balance_wallet,
                  text: "Depositar",
                ),
              ),
              InkWell(
                onTap: () {},
                child: _BoxActions(
                    icon: Icons.cached,
                    text: "Transferir"
                ),
              ),
              InkWell(
                onTap: () {},
                child: _BoxActions(
                  icon: Icons.center_focus_strong,
                  text: "Ler",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BoxActions extends StatelessWidget {
  final IconData? icon;
  final String text;

  const _BoxActions({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return BoxCardComponent(
      boxContent: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8, bottom: 8),
        child: Ink(
          width: 55,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(icon),
              ),
              Text(text, style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}
