import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:inversor_deportivo/providers/Inversor_provider.dart';
import 'package:provider/provider.dart';

class TablaPosicionesPage extends StatelessWidget {
  const TablaPosicionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final inversorP = Provider.of<InversorProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListView(
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Tabla de Posiciones',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
              Icon(
                Icons.table_rows,
                size: 40.0,
              ),
            ],
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              children: [
                Gap(80),
                Text('Equipo',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255))),
                Gap(60),
                Text('PJ',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255))),
                Gap(70),
                Text('PG',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255))),
                Gap(60),
                Text('PTS',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255))),
              ],
            ),
          ),
          Gap(10),
          DataEquipo(),
          Gap(10),
          DataEquipo(),
          Gap(10),
          DataEquipo(),
          Gap(10),
          DataEquipo(),
        ],
      ),
    );
  }
}

class DataEquipo extends StatelessWidget {
  const DataEquipo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.5),
        boxShadow: [
          BoxShadow(
              offset: const Offset(10, 20),
              blurRadius: 10,
              spreadRadius: 0,
              color: Color.fromARGB(255, 177, 177, 177).withOpacity(.05)),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            child: Text('Logo'),
            backgroundColor: Color.fromARGB(179, 219, 56, 56),
            maxRadius: 30.0,
          ),
          Gap(20),
          Text('Name'),
          Gap(60),
          Text('135'),
          Gap(60),
          Text('234'),
          Gap(60),
          Text('400')
        ],
      ),
    );
  }
}

class DataTableEquipo extends StatelessWidget {
  const DataTableEquipo({super.key});

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
