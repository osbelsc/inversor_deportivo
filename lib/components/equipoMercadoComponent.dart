import 'package:flutter/material.dart';

class equipoMercadoComponent extends StatelessWidget {
  const equipoMercadoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.0, bottom: 5.0),
      height: 70,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        border: Border.all(
          color: Colors.black,
          width: 0.1,
        ),
      ),
      child: ListTile(
        onTap: () => alertDialog(context),
        leading: CircleAvatar(
          child: Text('Logo'),
          backgroundColor: Color.fromARGB(179, 219, 56, 56),
          maxRadius: 30.0,
        ),
        title: Text(
          'Name',
          style: TextStyle(fontSize: 20.0),
        ),
        subtitle: Text('5.37659704'),
        trailing: Text(
          '3.4224',
          style: TextStyle(fontSize: 15.0),
        ),
      ),
    );
  }
}

void alertDialog(BuildContext context) {
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
