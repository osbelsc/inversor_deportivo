import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class InversorProvider extends ChangeNotifier {
  String _language = 'es-ES';
  String _Apikey = 'e644a6efcbf58cd4ca72748c548f13d5';
  String _baseUrl = 'api.themoviedb.org';

  InversorProvider() {
    print('inicializando');
  }
  Future<String> _getJsonData(String endpoint, [int page = 1]) async {
    var url = Uri.https(_baseUrl, endpoint, {
      'api_key': _Apikey,
      'language': _language,
      'page': '$page',
    });
    final response = await http.get(url);
    return response.body;
  }
  //metodos de peticiones
}
