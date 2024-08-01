import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../config.dart';

class UsuarioProvider extends ChangeNotifier {
  Future<Map<String, dynamic>> Register(
      String username,
      String email,
      String password,
      String confirmPassword,
      String fristName,
      String lastName) async {
    final authData = {
      'username': username,
      'email': email,
      'password1': password,
      'password2': confirmPassword,
      'first_name': fristName,
      'last_name': lastName,
      'occupation': 'user',
      "accept_terms_conditions": true,
      'returnSecureToken': true,
    };
    final resp = await http.post(
      Uri.parse('${Config.urlEnv}/auth/registration/'),
      body: jsonEncode(authData),
      headers: {
        'Content-Type': 'application/json', // Establece el tipo de contenido
      },
    );

    Map<String, dynamic> decodedResp = json.decode(resp.body);
    print(decodedResp);

    if (decodedResp.containsKey('access')) {
      return {'ok': true, 'token': decodedResp['idToken']};
    } else {
      return {'ok': false, 'mensaje': decodedResp['error']['message']};
    }
  }

  Future<Map<String, dynamic>> Login(
      String username, String email, String password) async {
    final authData = {
      'username': username,
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };
    final resp = await http.post(
      Uri.parse('${Config.urlEnv}/auth/login/'),
      body: jsonEncode(authData),
      headers: {
        'Content-Type': 'application/json', // Establece el tipo de contenido
      },
    );
    print('Response status: ${resp.statusCode}');
    print('Response body: ${resp.body}');
    Map<String, dynamic> decodedResp = json.decode(resp.body);
    print(decodedResp);

    if (decodedResp.containsKey('access')) {
      return {'ok': true, 'token': decodedResp['access']};
    } else {
      return {'ok': false, 'mensaje': decodedResp['errors'][0]['detail']};
    }
  }
}
