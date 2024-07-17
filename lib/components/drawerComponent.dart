import 'package:flutter/material.dart';
import 'package:inversor_deportivo/pages/partidosPage.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 26, 25, 32),
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  CircleAvatar(
                    child: Text('ID'),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    maxRadius: 30.0,
                  ),
                  const SizedBox(height: 12),
                  MenuItem(
                    text: 'Cartera',
                    icon: Icons.people,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 5),
                  MenuItem(
                    text: 'Mercado',
                    icon: Icons.shop_rounded,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 5),
                  MenuItem(
                    text: 'Ranking',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 5),
                  MenuItem(
                    text: 'Equipo',
                    icon: Icons.people,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 8),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 8),
                  MenuItem(
                    text: 'Partidos',
                    icon: Icons.gamepad_rounded,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  MenuItem(
                    text: 'Finanzas',
                    icon: Icons.monetization_on,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  MenuItem(
                    text: 'Tabla de Posiciones',
                    icon: Icons.table_rows,
                    onClicked: () => selectedItem(context, 6),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) =>
                  PartidosPage()), // Reemplaza 'NuevaPagina' con el nombre de tu clase de página a la que deseas dirigir
        );
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Scaffold(), // Page 2
        ));
        break;
    }
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onClicked;

  const MenuItem({
    required this.text,
    required this.icon,
    this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
