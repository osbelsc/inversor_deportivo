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
        return FixturePage();
      case 5:
        return TablaPosicionesPage();
      case 6:
        return FinanzasPage(); // Ejemplo de página
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: Color.fromARGB(255, 255, 255, 255));

    // Decide qué mostrar como body
    Widget body = drawerIndex == -1
        ? _getBottomNavPage(bottomNavIndex)
        : _getDrawerPage(drawerIndex);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 222, 223),
      appBar: AppBar(
        

        backgroundColor: const Color.fromARGB(221, 215, 215, 215),
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
        title: Text('Inversor deportivo', style: TextStyle()),
      ),

      drawer: Drawer(
        backgroundColor: Colors.black87,
        child: ListView(
          children: <Widget>[
            CircleAvatar(
              child: Text(
                'ID',
                style: TextStyle(color: Colors.black87),
              ),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              maxRadius: 50.0,
            ),
            ListTile(
              leading: Icon(
                Icons.group,
                color: Colors.white70,
              ),
              title: Text(
                'Cartera',
                style: textStyle,
              ),
              onTap: () {
                setState(() {
                  drawerIndex =
                      0; // Cambia al índice correspondiente del Drawer
                });
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.white70,
              ),
              title: Text(
                'Mercado',
                style: textStyle,
              ),
              onTap: () {
                setState(() {
                  drawerIndex =
                      1; // Cambia al índice correspondiente del Drawer
                });
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: Icon(
                Icons.business_center_sharp,
                color: Colors.white70,
              ),
              title: Text(
                'Ranking',
                style: textStyle,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RankingPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.business_center_sharp,
                color: Colors.white70,
              ),
              title: Text(
                'Equipos',
                style: textStyle,
              ),
              onTap: () {
                setState(() {
                  drawerIndex =
                      3; // Cambia al índice correspondiente del Drawer
                });
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: Icon(
                Icons.business_center_sharp,
                color: Colors.white70,
              ),
              title: Text(
                'Fixture',
                style: textStyle,
              ),
              onTap: () {
                setState(() {
                  drawerIndex =
                      4; // Cambia al índice correspondiente del Drawer
                });
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: Icon(
                Icons.business_center_sharp,
                color: Colors.white70,
              ),
              title: Text(
                'Tabla de posiciones',
                style: textStyle,
              ),
              onTap: () {
                setState(() {
                  drawerIndex =
                      5; // Cambia al índice correspondiente del Drawer
                });
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: Icon(
                Icons.business_center_sharp,
                color: Colors.white70,
              ),
              title: Text(
                'Finanzas',
                style: textStyle,
              ),
              onTap: () {
                setState(() {
                  drawerIndex =
                      6; // Cambia al índice correspondiente del Drawer
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
        selectedItemColor: Color(0xff4338CA),
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
