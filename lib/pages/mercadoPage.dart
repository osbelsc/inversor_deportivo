import 'package:flutter/material.dart';

import '../components/componentsurl.dart';

class MercadoPage extends StatelessWidget {
  const MercadoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        equipoComponent(),
        equipoComponent(),
      ],
    );
  }
}
