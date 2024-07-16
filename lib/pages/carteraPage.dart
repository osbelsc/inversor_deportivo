import 'package:flutter/material.dart';

import 'pagesurl.dart';

class CarteraPage extends StatelessWidget {
  const CarteraPage({super.key});

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
