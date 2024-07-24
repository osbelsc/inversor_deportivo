import 'package:flutter/material.dart';

import '../pages/homePage.dart';
import '../pages/pagesurl.dart';
import 'componentsurl.dart';

void alertSaleDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          title: Text('Equipo'),
          content: Table(
            children: [
              TableRow(children: [Text('Disponibles'), Text('value')]),
              TableRow(children: [Text('Precio'), Text('value')]),
              TableRow(children: [Text('Cantidad'), Text('value')]),
            ],
          ),
          actions: [
            GradientButton(
              text: 'Ingresar',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        HomePage()), // Reemplaza 'NuevaPagina' con el nombre de tu clase de página a la que deseas dirigir
              ),
            ),
            GradientButton(
              text: 'Ingresar',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        HomePage()), // Reemplaza 'NuevaPagina' con el nombre de tu clase de página a la que deseas dirigir
              ),
            )
          ],
        ),
      );
    },
  );
}
