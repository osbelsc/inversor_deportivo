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
    return Row(
      children: [
        CircleAvatar(
          child: Text('Logo'),
          backgroundColor: Color.fromARGB(179, 219, 56, 56),
          maxRadius: 30.0,
        ),
        DataTableExample(),
      ],
    );
  }
}

class DataTableExample extends StatelessWidget {
  const DataTableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Expanded(
                child: Text(
                  'Acciones',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Precio',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Valor Actual',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('14')),
                DataCell(Text('\u0024103')),
                DataCell(Text('\u0024102')),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
