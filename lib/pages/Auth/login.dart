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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Gap(50),
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

class LoginComponent extends StatefulWidget {
  const LoginComponent({super.key});

  @override
  _LoginComponentState createState() => _LoginComponentState();
}

class _LoginComponentState extends State<LoginComponent> {
  final UsuarioProvider usuarioProvider = UsuarioProvider();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? emailError; // Variable para el error de email
  String? passwordError; // Variable para el error de password
  String? usernameError;

  void validateInputs() {
    final email = emailController.text;
    final password = passwordController.text;
    final username = usernameController.text;

    setState(() {
      emailError = null; // Reiniciar error
      passwordError = null; // Reiniciar error
      usernameError = null;

      if (email.isEmpty) {
        emailError = 'El correo no puede estar vacío';
      } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
          .hasMatch(email)) {
        emailError = 'El correo no es válido';
      }

      if (password.isEmpty) {
        passwordError = 'La contraseña no puede estar vacía';
      } else if (password.length < 6) {
        // Validar longitud mínima
        passwordError = 'La contraseña debe tener al menos 6 caracteres';
      }
      if (username.isEmpty) {
        usernameError = 'La contraseña no puede estar vacía';
      }
    });
  }

  void handleLogin() async {
    validateInputs(); // Validar antes de iniciar sesión

    // Solo proceder si no hay errores
    if (emailError == null && passwordError == null && usernameError == null) {
      Map info = await usuarioProvider.Login(usernameController.text,
          emailController.text, passwordController.text);

      if (info['ok']) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        openSuccesSnackBar(context, 'Success', Icon(Icons.house));
      } else {
        openErrorSnackBar(context, "Error: ${info['mensaje']}");
      }
    }
  }

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
            width: 350,
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Alinear a la izquierda
              children: [
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                    labelText: 'Username',
                    errorText: emailError, // Mensaje de error
                  ),
                ),
                Gap(10), // Espacio adicional entre campos
              ],
            ),
          ),
          Gap(20),
          Container(
            width: 350,
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Alinear a la izquierda
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Mail',
                    labelText: 'Mail',
                    errorText: emailError, // Mensaje de error
                  ),
                ),
                Gap(10), // Espacio adicional entre campos
              ],
            ),
          ),
          Gap(20),
          Container(
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    labelText: 'Password',
                    errorText: passwordError, // Mensaje de error
                  ),
                ),
                Gap(10), // Espacio adicional entre campos
              ],
            ),
          ),
          Gap(10),
          GradientButton(
            text: 'Ingresar',
            onPressed: handleLogin, // Manejar la entrada
          ),
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
          'No tienes cuenta?',
          style: TextStyle(fontSize: 25.0),
        ),
        GradientButton(
          text: 'Registrarse',
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegisterPage(),
            ),
          ),
        ),
      ],
    );
  }
}
