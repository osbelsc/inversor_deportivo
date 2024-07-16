import 'package:flutter/material.dart';

import '../components/componentsurl.dart';
import 'pagesurl.dart';

class EquiposPage extends StatelessWidget {
  const EquiposPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        equipoComponent(),
        equipoComponent(),
        equipoComponent(),
      ],
    );
  }
}
