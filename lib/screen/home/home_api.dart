import 'dart:convert';

import 'package:api_demo/model/productList_model.dart';
import 'package:api_demo/services/http_api_services.dart';
import 'package:api_demo/utils/endpoint_res.dart';
import 'package:http/http.dart' as http;

class HomeApi {
  static Future<ProductList?> getData() async {
    try {
      http.Response? response =
          await HttpServices.getApi(url: EndPointRes.productAPI);
      if (response != null && response.statusCode == 200) {
        return productListFromJson(response.body);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  static Future<Product?> addData(Map<String, dynamic> body,
      {Map<String, String>? header}) async {
    try {
      http.Response? response = await HttpServices.postAPi(
          url: EndPointRes.addProductAPI, body: body, header: header);

      if (response != null && response.statusCode == 200) {
        return Product.fromJson(jsonDecode(response.body));
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
