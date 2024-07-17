import 'package:flutter/material.dart';
import 'package:inversor_deportivo/components/cardTeam.dart';

import '../components/componentsurl.dart';
import 'pagesurl.dart';

class EquiposPage extends StatelessWidget {
  const EquiposPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        teamCard(
            text: 'Name',
            subtitle: '26.00',
            onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EquipoPage()),
                  ),
                }),
        teamCard(
            text: 'Name',
            subtitle: '26.00',
            onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EquipoPage()),
                  ),
                }),
        teamCard(
            text: 'Name',
            subtitle: '26.00',
            onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EquipoPage()),
                  ),
                }),
      ],
    );
  }
}
