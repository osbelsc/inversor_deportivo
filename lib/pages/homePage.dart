import 'package:flutter/material.dart';

import 'package:inversor_deportivo/pages/pagesurl.dart';
import '../components/componentsurl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Inversor Deportivo',
          style: TextStyle(color: Colors.white70),
        ),
        backgroundColor: Colors.black87,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.white70,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
              onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    ),
                  },
              icon: Icon(Icons.supervised_user_circle_rounded))
        ],
      ),
      drawer: DrawerComponent(),
      body: _callPage(currentIndex),
      backgroundColor: Color.fromARGB(255, 208, 231, 235),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        backgroundColor: Colors.black87,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Color.fromARGB(
            179, 219, 56, 56), // Color de los íconos y etiquetas seleccionados
        unselectedItemColor:
            Colors.white, // Color de los íconos y etiquetas no seleccionados
        items: [
          BottomNavigationBarItem(
            label: 'Equipo',
            icon: Icon(
              Icons.group,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Mercado',
            icon: Icon(
              Icons.shopping_cart_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cartera',
            icon: Icon(
              Icons.business_center_sharp,
            ),
          )
        ],
      ),
    );
  }
}

_callPage(int actPage) {
  switch (actPage) {
    case 0:
      return EquiposPage();
    case 1:
      return MercadoPage();
    case 2:
      return CarteraPage();
    default:
      return Container(
        decoration: BoxDecoration(color: Colors.redAccent),
        child: Text('Error page'),
      );
  }
}
