import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netsecurityapp/config/app_api.dart';
import 'package:netsecurityapp/net/base_server.dart';
import 'package:netsecurityapp/response/login_reponse.dart';

class LoginService {
  final String username;
  final String password;

  LoginService({required this.username, required this.password});

  Future<LoginResponse> call() async {
    final body = {
      "account": username,
      "password": password,
    };
    final resul =
        await http.post(Uri.parse(Api.userloginUrl), body: jsonEncode(body));
    //传入到 LoginResponse 里面的 工厂方法，返回
    return LoginResponse.fromJson(jsonDecode(resul.body)['data']);
  }
}
