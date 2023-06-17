// ignore_for_file: avoid_print

import 'package:api_demo/model/login_model.dart';
import 'package:api_demo/services/https_services_api.dart';
import 'package:api_demo/utlis/endpoint_res.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  static Future loginUser(Map<String, dynamic> body) async {
    try {
      String url = EndPointResources.login;
      http.Response? response = await HttpServices.postApi(
        url: url,
        body: body,
        header: {'Content-Type': 'application/json'},
      );
      if (response != null && response.statusCode == 200) {
        print("responce=========>${response.body}");
        return loginUserFromJson(response.body);
      }
    } catch (e) {
      print(e);
    }
  }
}
