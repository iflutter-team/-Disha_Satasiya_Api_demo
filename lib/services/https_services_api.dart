import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpServices {
  static Future<http.Response?> getApi({required String url}) async {
    try {
      if (kDebugMode) {
        print("Url======> $url");
      }
      return await http.get(Uri.parse(url));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  static Future<http.Response?> postApi(
      {Map<String, dynamic>? body,
      required String url,
      Map<String, String>? header}) async {
    try {
      if (kDebugMode) {
        print("Url======> $url");
        print("HEADER=====> $header");
        print("Body=====>  $body");
      }

      return await http.post(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: header,
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
