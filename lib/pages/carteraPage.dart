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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Cartera',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
              Icon(
                Icons.business_center_sharp,
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
                Gap(40),
                Text('Acciones',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255))),
                Gap(45),
                Text('PC',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255))),
                Gap(60),
                Text('VA',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255))),
              ],
            ),
          ),
          Gap(10),
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
      height: 100,
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 255, 255, 255), // Color inicial
            Color.fromARGB(255, 207, 206, 207), // Color final
          ],
          begin: Alignment.topLeft, // Comienza en la esquina superior izquierda
          end: Alignment.bottomRight, // Termina en la esquina inferior derecha
        ),
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
