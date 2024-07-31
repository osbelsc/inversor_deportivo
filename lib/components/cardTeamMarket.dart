import 'package:flutter/material.dart';

class teamMarketCard extends StatelessWidget {
  final String text;
  // final String imageUrl;
  final String subtitle;
  final String value;
  final String price;
  final Function() onPressed;

  const teamMarketCard(
      {required this.text,

      // required this.imageUrl,
      required this.subtitle,
      required this.value,
      required this.price,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 85,
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
            children: [
              // Image.network(imageUrl, height: 59, fit: BoxFit.cover),
              // const SizedBox(
              //   width: 15,
              // ),
              CircleAvatar(
                child: Text('Logo'),
                backgroundColor: Color.fromARGB(179, 219, 56, 56),
                maxRadius: 30.0,
              ),
              Column(
                children: [
                  Text(text,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  Text(price,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 56, 56, 56),
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  ),
                  Text(
                    value,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 56, 56, 56),
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
