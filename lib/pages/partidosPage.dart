import 'package:flutter/material.dart';

class PartidosPage extends StatelessWidget {
  const PartidosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 85,
          padding: const EdgeInsets.all(15.0),
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
            children: [],
          ),
        ),
      ],
    );
  }
}
