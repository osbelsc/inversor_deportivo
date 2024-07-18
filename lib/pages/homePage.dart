import 'package:flutter/material.dart';

import 'package:inversor_deportivo/pages/pagesurl.dart';
import '../components/componentsurl.dart';

class HomePage extends StatefulWidget {
  final Widget child;

  const HomePage({required this.child, Key? key}) : super(key: key);

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
      body: widget.child,
      backgroundColor: Color.fromARGB(255, 208, 231, 235),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        backgroundColor: Colors.black87,
        currentIndex: currentIndex,
        selectedItemColor: Color.fromARGB(179, 219, 56, 56),
        unselectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            currentIndex = index;

            // Navegar a una nueva pantalla según el índice seleccionado
            switch (index) {
              case 0:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(child: EquiposPage())));
                break;
              case 1:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(child: MercadoPage())));
                break;
              case 2:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(child: CarteraPage())));
                break;
              default:
                break;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Equipo',
            icon: Icon(Icons.group),
          ),
          BottomNavigationBarItem(
            label: 'Mercado',
            icon: Icon(Icons.shopping_cart_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Cartera',
            icon: Icon(Icons.business_center_sharp),
          )
        ],
      ),
    );
  }
}
