import 'package:flutter/material.dart';

import 'pagesurl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomNavIndex = 0; // Índice para el BottomNavigationBar
  int drawerIndex = -1;

  Widget _getBottomNavPage(int index) {
    switch (index) {
      case 0:
        return EquiposPage();
      case 1:
        return MercadoPage();
      case 2:
        return CarteraPage();
      default:
        return Container();
    }
  }

  // Función para obtener la página correcta según el índice de Drawer
  Widget _getDrawerPage(int index) {
    switch (index) {
      case 0:
        return CarteraPage(); // Ejemplo de página
      case 1:
        return MercadoPage(); // Ejemplo de página
      case 2:
        return RankingPage();
      case 3:
        return EquiposPage();
      case 4:
        return TablaPosicionesPage();
      case 5:
        return FinanzasPage(); // Ejemplo de página
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Decide qué mostrar como body
    Widget body = drawerIndex == -1
        ? _getBottomNavPage(bottomNavIndex)
        : _getDrawerPage(drawerIndex);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            ),
            icon: Icon(Icons.supervised_user_circle_rounded),
          )
        ],
        centerTitle: true,
        title: Text('Inversor deportivo',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Cartera'),
              onTap: () {
                setState(() {
                  drawerIndex =
                      0; // Cambia al índice correspondiente del Drawer
                });
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_rounded),
              title: Text('Mercado'),
              onTap: () {
                setState(() {
                  drawerIndex =
                      1; // Cambia al índice correspondiente del Drawer
                });
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.business_center_sharp),
              title: Text('Ranking'),
              onTap: () {
                setState(() {
                  drawerIndex =
                      2; // Cambia al índice correspondiente del Drawer
                });
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.business_center_sharp),
              title: Text('Equipos'),
              onTap: () {
                setState(() {
                  drawerIndex =
                      3; // Cambia al índice correspondiente del Drawer
                });
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.business_center_sharp),
              title: Text('Tabla de posiciones'),
              onTap: () {
                setState(() {
                  drawerIndex =
                      4; // Cambia al índice correspondiente del Drawer
                });
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.business_center_sharp),
              title: Text('Finanzas'),
              onTap: () {
                setState(() {
                  drawerIndex =
                      5; // Cambia al índice correspondiente del Drawer
                });
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
          ],
        ),
      ),
      body: body, // Usa el body determinado
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        backgroundColor: Colors.black87,
        currentIndex: bottomNavIndex,
        onTap: (index) {
          setState(() {
            drawerIndex = -1; // Resetea el índice del Drawer
            bottomNavIndex = index; // Cambia el índice del BottomNavigationBar
          });
        },
        selectedItemColor: Color.fromARGB(255, 97, 94, 184),
        unselectedItemColor: Colors.white,
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
          ),
        ],
      ),
    );
  }
}
