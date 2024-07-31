import 'package:flutter/material.dart';
import 'package:inversor_deportivo/providers/Inversor_provider.dart';
import 'package:inversor_deportivo/providers/usuario_provider.dart';
import 'package:inversor_deportivo/routes/routes.dart';
import 'package:provider/provider.dart';
import 'pages/pagesurl.dart';

void main() => runApp(const Appstate());

class Appstate extends StatelessWidget {
  const Appstate({super.key});
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => InversorProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => UsuarioProvider(),
          lazy: false,
        ),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
              // Cambia el color del ícono aquí
              ),
        ),
      ),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: getaplicationsRoutes(),
    );
  }
}
