import 'package:flutter/material.dart';
import 'package:inversor_deportivo/pages/pagesurl.dart';

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
        title: Text('Inversor Deportivo'),
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(Icons.menu_outlined),
        ),
      ),
      body: _callPage(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                label: 'Equipo',
                icon: Icon(
                  Icons.group,
                )),
            BottomNavigationBarItem(
                label: 'Mercado',
                icon: Icon(
                  Icons.shopping_cart_rounded,
                )),
            BottomNavigationBarItem(
                label: 'Cartera',
                icon: Icon(
                  Icons.business_center_sharp,
                ))
          ]),
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
