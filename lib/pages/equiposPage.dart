import 'package:flutter/material.dart';

import 'pagesurl.dart';

class EquiposPage extends StatelessWidget {
  const EquiposPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(Icons.menu_outlined),
        ),
        title: Text('Inversor Deportivo'),
      ),
      body: ListView(
        children: <Widget>[
          equipoComponent(),
          equipoComponent(),
          equipoComponent(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.cyan.shade200,
          backgroundColor: Colors.blueGrey,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(label: 'Equipos', icon: Icon(Icons.group)),
            BottomNavigationBarItem(
                label: 'Mercado', icon: Icon(Icons.add_shopping_cart_rounded)),
            BottomNavigationBarItem(
                label: 'Cartera', icon: Icon(Icons.business_center_rounded)),
          ]),
    );
  }
}
