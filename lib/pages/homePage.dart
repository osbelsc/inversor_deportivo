import 'package:flutter/material.dart';
import 'package:inversor_deportivo/pages/pagesurl.dart'; // Asegúrate de que las páginas estén bien importadas
import '../components/componentsurl.dart'; // Asegúrate de que el DrawerComponent esté bien importado

class HomePage extends StatefulWidget {
  final Widget child;

  const HomePage({required this.child, Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void _navigateToPage(int index) {
    setState(() {
      currentIndex = index; // Actualiza el índice de la página actual
    });
    Navigator.pop(context); // Cierra el Drawer
  }

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
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            ),
            icon: Icon(Icons.supervised_user_circle_rounded),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Header del Drawer (opcional)
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
              title: Text('Equipo'),
              onTap: () => _navigateToPage(0), // Navega a la página de Equipos
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_rounded),
              title: Text('Mercado'),
              onTap: () => _navigateToPage(1), // Navega a la página de Mercado
            ),
            ListTile(
              leading: Icon(Icons.business_center_sharp),
              title: Text('Cartera'),
              onTap: () => _navigateToPage(2), // Navega a la página de Cartera
            ),
          ],
        ),
      ),
      body: _callPage(currentIndex),
      backgroundColor: Color.fromARGB(255, 208, 231, 235),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        backgroundColor: Colors.black87,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index; // Cambia el índice actual al que se presionó
          });
        },
        selectedItemColor: Color.fromARGB(179, 219, 56, 56),
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

  Widget _callPage(int actPage) {
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
          child: Center(child: Text('Error page')),
        );
    }
  }
}
