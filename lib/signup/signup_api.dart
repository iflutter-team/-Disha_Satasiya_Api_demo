// ignore_for_file: avoid_print
import 'package:api_demo/model/signup_model.dart';
import 'package:api_demo/services/https_services_api.dart';
import 'package:http/http.dart' as http;
import 'package:api_demo/utlis/endpoint_res.dart';

class SignUpApi {
  static Future registerUser(Map<String, dynamic> body) async {
    try {
      String url = EndPointResources.signUp;
      http.Response? response = await HttpServices.postApi(
          url: url, body: body, header: {'Content-Type': 'application/json'});
      if (response != null && response.statusCode == 200) {
        print("responce=========>${response.body}");
       return signUpFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    
    }
  }
}
