import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:http_parser/http_parser.dart' as parser;

abstract class ServiceBase<T> {
  Future<T> call();

  // 用来格式化，传入的字符串，变成uri 形式的
  Uri _getUrl(String url) => Uri.parse(url);

  //post 请求
  Future<Map<String, dynamic>> basepost(
      Map<String, dynamic> body, String apiurl) async {
    try {
      return _handleResponse(await Myrequest().get(_getUrl(apiurl)));
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
    // var token = 'asd';
    // if (token != null) {
    //   request.headers['Authorization'] = token!;
    // }
    return request.send();
  }
}
