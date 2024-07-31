import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:inversor_deportivo/components/snacksBar.dart';
import 'package:inversor_deportivo/providers/usuario_provider.dart';

import '../../components/button.dart';
import '../pagesurl.dart';

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
              TitleComponent(),
              Gap(20),
              LoginComponent(),
              Gap(20),
              RegisterComponent(),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleComponent extends StatelessWidget {
  const TitleComponent({super.key});

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
  final usuarioProvider = UsuarioProvider();

  // Controladores para los campos de texto
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginComponent({super.key});

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
              controller: emailController, // Asignar el controlador aquí
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  gapPadding: 20.0,
                ),
                hintText: 'User / Mail',
                label: Text("User / Mail"),
              ),
            ),
          ),
          Gap(20),
          Container(
            width: 350, // Aquí puedes definir el ancho deseado
            child: TextField(
              controller: passwordController, // Asignar el controlador aquí
              obscureText: true,
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
              onPressed: () async {
                // Obtener los valores de los controladores
                String email = emailController.text;
                String password = passwordController.text;

                // Llamar a la función de login con los valores obtenidos
                Map info = await usuarioProvider.Login(email, password);

                if (info['ok']) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomePage()), // Reemplaza 'NuevaPagina' con el nombre de tu clase de página a la que deseas dirigir
                  );
                  openSuccesSnackBar(context, 'Succes', Icon(Icons.house));
                } else {
                  openErrorSnackBar(context, "This is an error message!");
                }
              }),
        ],
      ),
    );
  }
}

class RegisterComponent extends StatelessWidget {
  const RegisterComponent({super.key});

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
