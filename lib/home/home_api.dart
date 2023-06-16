import 'package:api_demo/model/photos_model.dart';
import 'package:api_demo/services/https_services_api.dart';
import 'package:api_demo/utlis/endpoint_res.dart';
import 'package:http/http.dart' as http;
// ignore_for_file: avoid_print

class HomeScreenApi {
  static Future getData() async {
    try {
      http.Response? response =
          await HttpServices.getApi(url: EndPointResources.productAPI);
      if (response != null && response.statusCode == 200) {
        return productModeFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  static addData(Map<String, dynamic> body) async {
    try {
      // http.Response? response = await HttpServices.postApi(
      //   url: EndPointResources.addProductAPI,
      // );
    } catch (e) {
      print(e);
    }
  }
}
