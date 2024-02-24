import 'package:shared_preferences/shared_preferences.dart';

class TokenGet {
  Future<void> saveToken(String token) async {
    print('传入的token:$token');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

// 获取token
  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    return token;
  }
}
