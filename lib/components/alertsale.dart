import 'package:flutter/material.dart';

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
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Comprar")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Cancelar"))
          ],
        ),
      );
    },
  );
}
