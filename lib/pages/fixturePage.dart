import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../components/componentsurl.dart';

class FixturePage extends StatelessWidget {
  const FixturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Text(
            'Fixture',
            style: TextStyle(fontSize: 30.0),
          ),
          Gap(10),
          Column(
            children: [
              partidoComponent(),
              partidoComponent(),
              partidoComponent(),
            ],
          )
        ],
      ),
    );
  }
}
