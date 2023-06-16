import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpServices {
  static Future<http.Response?> getApi({
    required String url,
  }) async {
    try {
      if (kDebugMode) {
        print("URL ===> $url");
      }
      return http.get(Uri.parse(url));
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<http.Response?> postAPi(
     {
      required String url,
    Map<String, dynamic>? body,
    Map<String, String>? header,
  })async {
    try {
      print("Url ===> $url");
      print("Body ===> $body");
      print("Header ===> $header");
      return http.post(
        Uri.parse(url),
        body: body,
        headers: header,
      );
    } catch (e) {
      print(e);
      return null;
    }
  }
}
