import 'package:flutter/material.dart';
import '../pages/pagesurl.dart';

Map<String, WidgetBuilder> getaplicationsRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => EquiposPage(),
    'login': (BuildContext context) => LoginPage(),
    'register': (BuildContext context) => RegisterPage(),
    'equipos': (BuildContext context) => EquiposPage(),
    'mercado': (BuildContext context) => MercadoPage(),
    'equipo': (BuildContext context) => EquipoPage(),
    'partidos': (BuildContext context) => PartidosPage(),
  };
}
