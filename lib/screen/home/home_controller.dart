import 'package:api_demo/screen/home/add_prodect.dart';
import 'package:api_demo/screen/home/home_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/productList_model.dart';

class Homescrencontroller extends GetxController {
  ProductList? productData;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController discountPercentageController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController ratingController = TextEditingController();
  TextEditingController stockController = TextEditingController();
  TextEditingController brandController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController thumbnailController = TextEditingController();
  @override
  void onInit(){
    getData();
    super.onInit();
  }

  void onTapAddProduct(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddProdect(),));
  }

  getData() async {
    productData = await HomeApi.getData();
    print(productData!.products![0].title);
    update(["prodect"]);
  }

  Future<void> addProdect() async {
    Map<String, dynamic> body = {
      "title": titleController.text.toString(),
      "description": descriptionController.text.toString(),
      "price": priceController.text.toString(),
      "discountPercentage": discountPercentageController.text.toString(),
      "rating": ratingController.text.toString(),
      "stock": stockController.text.toString(),
      "brand": brandController.text.toString(),
      "category": categoryController.text.toString(),
      "thumbnail": thumbnailController.text.toString()
    };
    Product? data  = await HomeApi.addData(body);
    if(data!=null){
      productData!.products!.add(data);
    }
    update(["prodect"]);
    Get.back();
  }

}