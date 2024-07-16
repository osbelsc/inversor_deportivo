import 'package:flutter/material.dart';

class equipoComponent extends StatelessWidget {
  const equipoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 5.0),
        height: 70,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          border: Border.all(
            color: Colors.black,
            width: 0.1,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: 8.0), // Ajusta el valor según tus necesidades
          child: ListTile(
            onTap: () => {},
            leading: CircleAvatar(
              child: Text('Logo'),
              backgroundColor: Color.fromARGB(179, 219, 56, 56),
              maxRadius: 30.0,
            ),
            title: Text(
              'Name',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '3.4224',
                  style: TextStyle(fontSize: 15.0),
                ),
                Text('5.353453', style: TextStyle(fontSize: 15.0)),
              ],
            ),
          ),
        ));
  }
}
