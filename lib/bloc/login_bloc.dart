import 'dart:async';

import 'package:provider/provider.dart';

class LoginBloc {
  final _userController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();
  //Recuperar los datos del stream
  get userStream => _userController.stream;
  get passwordStream => _passwordController.stream;

  //Isnsertar valores al stream
  Function(String) get changeUser => _userController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _userController.close();
    _passwordController.close();
  }
}
