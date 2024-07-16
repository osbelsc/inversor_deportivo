import 'package:flutter/material.dart';
import 'package:inversor_deportivo/routes/routes.dart';
import 'pages/pagesurl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: getaplicationsRoutes(),
    );
  }
}
