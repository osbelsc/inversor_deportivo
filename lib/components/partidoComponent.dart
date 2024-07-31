import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class partidoComponent extends StatelessWidget {
  const partidoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 130,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 255, 255, 255), // Color inicial
                Color.fromARGB(255, 207, 206, 207), // Color final
              ],
              begin: Alignment
                  .topLeft, // Comienza en la esquina superior izquierda
              end: Alignment
                  .bottomRight, // Termina en la esquina inferior derecha
            ),
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'Local',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Gap(5),
                  CircleAvatar(
                    child: Text('Logo'),
                    backgroundColor: Color.fromARGB(179, 219, 56, 56),
                    maxRadius: 30.0,
                  ),
                ],
              ),
              Text('VS'),
              Column(
                children: [
                  Text(
                    'Visita',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Gap(5),
                  CircleAvatar(
                    child: Text('Logo'),
                    backgroundColor: Color.fromARGB(179, 219, 56, 56),
                    maxRadius: 30.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
