import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:inversor_deportivo/pages/homePage.dart';
import 'package:inversor_deportivo/pages/register.dart';

import '../components/button.dart';
import 'pagesurl.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              InfoComponent(),
              Gap(20),
              LoginComponent(),
              Gap(20),
              registerComponent(),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoComponent extends StatelessWidget {
  const InfoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          child: Text(
            'ID',
            style: TextStyle(color: Colors.white70),
          ),
          backgroundColor: Colors.black87,
          maxRadius: 50.0,
        ),
        Text(
          'Inversor Deportivo',
          style: TextStyle(fontSize: 35.0),
        )
      ],
    );
  }
}

class LoginComponent extends StatelessWidget {
  const LoginComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Bienvenido',
            style: TextStyle(fontSize: 30.0),
          ),
          Gap(20),
          Container(
            width: 350, // Aquí puedes definir el ancho deseado
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  gapPadding: 20.0,
                ),
                hintText: 'Usuario',
                label: Text("Usuario"),
              ),
            ),
          ),
          Gap(20),
          Container(
            width: 350, // Aquí puedes definir el ancho deseado
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  gapPadding: 20.0,
                ),
                hintText: 'Password',
                labelText:
                    'Password', // Si es Flutter 2.0 en lugar de label usarías labelText
              ),
            ),
          ),
          Gap(10),
          GradientButton(
            text: 'Ingresar',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      HomePage()), // Reemplaza 'NuevaPagina' con el nombre de tu clase de página a la que deseas dirigir
            ),
          )
        ],
      ),
    );
  }
}

class registerComponent extends StatelessWidget {
  const registerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'No tienes cuenta ?',
          style: TextStyle(fontSize: 25.0),
        ),
        GradientButton(
          text: 'Registrarse',
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    RegisterPage()), // Reemplaza 'NuevaPagina' con el nombre de tu clase de página a la que deseas dirigir
          ),
        )
      ],
    );
  }
}
