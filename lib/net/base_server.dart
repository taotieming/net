import 'dart:convert';
import 'package:http/http.dart' as http;

// import 'package:http_parser/http_parser.dart' as parser;
// 网络请求的基本类，用来处理其他过来的业务请求
abstract class ServiceBase<T> {
  Future<T> call();

  // 用来格式化，传入的字符串，变成uri 形式的
  Uri _getUrl(String url) => Uri.parse(url);

  //post 请求
  Future<Map<String, dynamic>> basepost(
      Map<String, dynamic> body, String apiurl) async {
    try {
      return _handleResponse(
          await Myrequest().post(_getUrl(apiurl), body: jsonEncode(body)));
    } catch (e) {
      throw Exception(e);
    }
  }

//处理返回的网络请求信息
  Map<String, dynamic> _handleResponse(http.Response response) {
    print(response.body);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    if (response.statusCode == 500) {
      return jsonDecode(response.body);
    } else {
      throw Exception();
    }
  }
}

//一个请求的网路类
class Myrequest extends http.BaseClient {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    var token =
        "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MDkxMTczODMsImp0aSI6IjEiLCJpYXQiOjE3MDkwMzA5ODMsInN1YiI6IjEifQ.OaatbsYVygnbYJqbyIn0FzsP1mE50YzcjYrKMMsYbYckVVdDo3BFg09NV1GVbwiuQwwFridi4DhURSElVa_Npw           ";
    if (token != null) {
      request.headers['Authorization'] = token!;
    }
    return request.send();
  }
}
