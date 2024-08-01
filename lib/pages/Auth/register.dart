import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:inversor_deportivo/providers/usuario_provider.dart';

import '../../components/componentsurl.dart';
import '../pagesurl.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                //TitleComponent(),
                Gap(50),
                CircleAvatar(
                  child: Text(
                    'ID',
                    style: TextStyle(color: Colors.white70),
                  ),
                  backgroundColor: Colors.black87,
                  maxRadius: 50.0,
                ),
                Gap(20),
                registerInputsComponents(),
                Gap(20),
                LoginRComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class registerInputsComponents extends StatelessWidget {
  final usuarioProvider = new UsuarioProvider();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();
  final TextEditingController firstController = TextEditingController();
  final TextEditingController lastController = TextEditingController();

  registerInputsComponents({super.key});

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
          width: 350, // Aquí puedes definir el ancho deseado
          child: TextField(
            controller: firstController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                gapPadding: 20.0,
              ),
              hintText: 'First Name',
              labelText: 'First Name',
              // Si es Flutter 2.0 en lugar de label usarías labelText
            ),
          ),
        ),
        Gap(20),
        Container(
          width: 350, // Aquí puedes definir el ancho deseado
          child: TextField(
            controller: lastController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                gapPadding: 20.0,
              ),
              hintText: 'Last Name',
              labelText: 'Last Name',
              // Si es Flutter 2.0 en lugar de label usarías labelText
            ),
          ),
        ),
        Gap(20),
        Container(
          width: 350,
          child: TextField(
            controller: emailController,
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
            controller: usuarioController,
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
            controller: passwordController,
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
            controller: passwordConfirmController,
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
        GradientButton(
          text: 'Registrarse',
          onPressed: () => handleRegister(context),

          //Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) =>
          //           RegisterPage()), // Reemplaza 'NuevaPagina' con el nombre de tu clase de página a la que deseas dirigir
          // ),
        )
      ],
    );
  }

  void handleRegister(context) async {
    Map info = await usuarioProvider.Register(
        usuarioController.text,
        emailController.text,
        passwordController.text,
        passwordConfirmController.text,
        firstController.text,
        lastController.text);

    if (info['ok']) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      //openSuccesSnackBar(context, 'Success', Icon(Icons.house));
      print('registrado con exito');
    } else {
      print('no registrado con exito');
      //openErrorSnackBar(context, "Error: ${info['mensaje']}");
    }
  }
}

class LoginRComponent extends StatelessWidget {
  const LoginRComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tienes cuenta ?',
          style: TextStyle(fontSize: 25.0),
        ),
        GradientButton(
          text: 'Ingresar',
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    LoginPage()), // Reemplaza 'NuevaPagina' con el nombre de tu clase de página a la que deseas dirigir
          ),
        )
      ],
    );
  }
}
