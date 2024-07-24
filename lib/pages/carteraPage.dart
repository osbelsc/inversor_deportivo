import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../components/componentsurl.dart';
import 'pagesurl.dart';

class CarteraPage extends StatelessWidget {
  const CarteraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListView(
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
          Gap(10),
          FichaEquipo()
        ],
      ),
    );
  }
}

class FichaEquipo extends StatelessWidget {
  const FichaEquipo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.5),
        boxShadow: [
          BoxShadow(
              offset: const Offset(10, 20),
              blurRadius: 10,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.05)),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            child: Text('Logo'),
            backgroundColor: Color.fromARGB(179, 219, 56, 56),
            maxRadius: 30.0,
          ),
          DataTableExample(),
        ],
      ),
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
