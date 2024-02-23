import 'package:flutter/material.dart';
import 'package:netsecurityapp/net/login_server.dart';

import 'package:netsecurityapp/response/login_reponse.dart';

class LoginProvider extends ChangeNotifier {
  var username = '';
  var password = '';
  var usertoken = '';

  Future<LoginResponse> login() async {
    return LoginService(username: username, password: password).call();
  }
}
