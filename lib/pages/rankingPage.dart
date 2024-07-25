import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../components/componentsurl.dart';

class RankingPage extends StatelessWidget {
  const RankingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final fonsize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'Ranking',
          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.podcasts_outlined),
              title: Text('Tu Posicion'),
              trailing: Text('10'),
            ),
            ListTile(
              leading: Icon(Icons.business_center_sharp),
              title: Text('Valor cartera'),
              trailing: Text('\$100'),
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Efectivo'),
              trailing: Text('\$100'),
            ),
            ListTile(
              leading: Icon(Icons.more),
              title: Text('Total'),
              trailing: Text('\$100'),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Players',
                        style: fonsize30,
                      ),
                      Text(
                        'Fecha: 1-3-24 ',
                        style: fonsize30,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      teamCard(
                          text: 'Name',
                          subtitle: '',
                          value: '16',
                          onPressed: () => {}),
                      teamCard(
                          text: 'Name',
                          subtitle: '',
                          value: '16',
                          onPressed: () => {}),
                      teamCard(
                          text: 'Name',
                          subtitle: '',
                          value: '16',
                          onPressed: () => {})
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
