import 'package:flutter/material.dart';

class MercadoPage extends StatelessWidget {
  const MercadoPage({super.key});

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

class equipoComponent extends StatelessWidget {
  const equipoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 5.0),
        height: 70,
        color: Colors.blueGrey,
        child: Padding(
          padding: EdgeInsets.only(
              top: 8.0), // Ajusta el valor según tus necesidades
          child: ListTile(
            onTap: () => {},
            leading: CircleAvatar(
              child: Text('Logo'),
              backgroundColor: Color.fromARGB(179, 219, 56, 56),
              maxRadius: 30.0,
            ),
            title: Text(
              'Name',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '3.4224',
                  style: TextStyle(fontSize: 15.0),
                ),
                Text('5.353453', style: TextStyle(fontSize: 15.0)),
              ],
            ),
          ),
        ));
  }
}
