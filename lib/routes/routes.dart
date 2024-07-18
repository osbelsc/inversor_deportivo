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
    'cartera': (BuildContext context) => CarteraPage(),
    'ranking': (BuildContext context) => RankingPage(),
    'tablaP': (BuildContext context) => TablaPosicionesPage(),
    'finanzas': (BuildContext context) => FinanzasPage(),
  };
}
