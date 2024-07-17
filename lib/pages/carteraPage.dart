import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../components/componentsurl.dart';
import 'pagesurl.dart';

class CarteraPage extends StatelessWidget {
  const CarteraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Cartera',
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
        ),
        FichaEquipo(),
        FichaEquipo()
      ],
    );
  }
}

class FichaEquipo extends StatelessWidget {
  const FichaEquipo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableEquipo(),
        Gap(10),
      ],
    );
  }
}

class TableEquipo extends StatelessWidget {
  const TableEquipo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        teamCard(text: 'Equipo', subtitle: '', onPressed: () => {}),
        Table(
          border: TableBorder.all(width: 2, color: Colors.black),
          children: [
            TableRow(children: [
              TableCell(
                // Definir ancho para la primera celda
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  width: 120, // Ancho deseado
                  child: Text('Acciones'),
                ),
              ),
              TableCell(
                // Definir ancho para la segunda celda
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  width: 120, // Ancho deseado
                  child: Text('Precio Compra'),
                ),
              ),
              TableCell(
                // Definir ancho para la tercera celda
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  width: 120, // Ancho deseado
                  child: Text('Valor Actual'),
                ),
              ),
            ]),
            TableRow(children: [
              TableCell(
                child: Text('17'),
              ),
              TableCell(
                child: Text('\u0024103'),
              ),
              TableCell(
                child: Text('\u0024170'),
              ),
            ]),
          ],
        ),
      ],
    );
  }
}
