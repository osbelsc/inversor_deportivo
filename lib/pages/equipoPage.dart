import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class EquipoPage extends StatelessWidget {
  const EquipoPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<_SalesData> data = [
      _SalesData('Jan', 35),
      _SalesData('Feb', 28),
      _SalesData('Mar', 34),
      _SalesData('Apr', 32),
      _SalesData('May', 80)
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 222, 223),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'Equipo',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: ListView(children: [
        Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\u002426.00',
                  style: TextStyle(fontSize: 40.0),
                ),
                Text('12.9%', style: TextStyle(fontSize: 30.0)),
              ],
            ),
          ),
        ),
        Column(
          children: [
            //Initialize the chart widget
            SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                // Chart title
                title: ChartTitle(text: 'Analisis del equipo'),
                // Enable legend
                legend: Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <CartesianSeries<_SalesData, String>>[
                  LineSeries<_SalesData, String>(
                      dataSource: data,
                      xValueMapper: (_SalesData sales, _) => sales.year,
                      yValueMapper: (_SalesData sales, _) => sales.sales,
                      name: 'Sales',
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: true))
                ]),
          ],
        ),
        TeamBuy(),
        Gap(10),
        TeamSale(),
      ]),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class TeamBuy extends StatelessWidget {
  const TeamBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 187, 233, 176), // Color inicial
            Color.fromARGB(255, 119, 197, 103), // Color final
          ],
          begin: Alignment.topLeft, // Comienza en la esquina superior izquierda
          end: Alignment.bottomRight, // Termina en la esquina inferior derecha
        ),
        borderRadius: BorderRadius.circular(10.0),
        color: const Color.fromARGB(255, 197, 255, 227),
        border: Border.all(
          color: Colors.green, // Color del borde
          width: 2.0, // Ancho del borde
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  '\u002436.000',
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(
                  'Mejor Precio',
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            ),
            SizedBox(
              width: 110, // Ancho deseado
              height: 50, // Alto deseado
              child: ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón
                },
                child: Text(
                  'Comprar',
                  style:
                      TextStyle(color: const Color.fromARGB(255, 43, 175, 112)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TeamSale extends StatelessWidget {
  const TeamSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 223, 156, 156), // Color inicial
            Color.fromARGB(255, 185, 78, 83), // Color final
          ],
          begin: Alignment.topLeft, // Comienza en la esquina superior izquierda
          end: Alignment.bottomRight, // Termina en la esquina inferior derecha
        ),
        borderRadius: BorderRadius.circular(10.0),
        color: const Color.fromARGB(255, 255, 184, 184),
        border: Border.all(
          color: Colors.red, // Color del borde
          width: 2.0, // Ancho del borde
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  '\u002426.000',
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(
                  'Mejor Venta',
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            ),
            SizedBox(
              width: 110, // Ancho deseado
              height: 50, // Alto deseado
              child: ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón
                },
                child: Text(
                  'Vender',
                  style: TextStyle(color: Colors.redAccent),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
