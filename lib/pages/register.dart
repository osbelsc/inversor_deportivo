import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'pagesurl.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                InfoComponent(),
                Gap(20),
                registerInputsComponents(),
                Gap(20),
                loginComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class registerInputsComponents extends StatelessWidget {
  const registerInputsComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Registrarse',
          style: TextStyle(fontSize: 30.0),
        ),
        Gap(20),
        Container(
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                gapPadding: 20.0,
              ),
              hintText: 'Mail',
              label: Text("Mail"),
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
              hintText: 'Usuario',
              labelText: 'Usuario',
              // Si es Flutter 2.0 en lugar de label usarías labelText
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
              labelText: 'Password',
              // Si es Flutter 2.0 en lugar de label usarías labelText
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
              hintText: 'Repetir Password',
              labelText: 'Repetir Password',
              // Si es Flutter 2.0 en lugar de label usarías labelText
            ),
          ),
        ),
        Gap(10),
        TextButton(
            onPressed: () => {},
            child: Text(
              'Registrar !',
              style: TextStyle(fontSize: 20.0),
            ))
      ],
    );
  }
}

class loginComponent extends StatelessWidget {
  const loginComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tienes cuenta ?',
          style: TextStyle(fontSize: 25.0),
        ),
        TextButton(
            onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            LoginPage()), // Reemplaza 'NuevaPagina' con el nombre de tu clase de página a la que deseas dirigir
                  ),
                },
            child: Text(
              'Ingresar',
              style: TextStyle(fontSize: 20.0),
            ))
      ],
    );
  }
}
