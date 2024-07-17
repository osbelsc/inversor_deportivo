import 'package:flutter/material.dart';

import '../components/componentsurl.dart';

class MercadoPage extends StatelessWidget {
  const MercadoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        teamMarketCard(
            text: 'Equipo',
            subtitle: '25.00',
            value: '\u002428.00',
            price: '\u002416.00',
            onPressed: () => {
                  alertSaleDialog(context),
                }),
        teamMarketCard(
            text: 'Equipo',
            value: '\u002428.00',
            price: '\u002416.00',
            subtitle: '25.00',
            onPressed: () => {
                  alertSaleDialog(context),
                }),
      ],
    );
  }
}
