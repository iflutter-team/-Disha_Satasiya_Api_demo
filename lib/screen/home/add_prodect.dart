import 'package:api_demo/screen/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProdect extends StatelessWidget {
  const AddProdect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Add Prodect"),),
      body: GetBuilder<Homescrencontroller>(builder: (controller) => SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("title"),
            textField(controller.titleController),
            Text("rating"),
            textField(controller.ratingController),
            Text("brand"),
            textField(controller.brandController),
            Text("category"),
            textField(controller.categoryController),
            Text("description"),
            textField(controller.descriptionController),
            Text("price"),
            textField(controller.priceController),
            Text("discountPercentage"),
            textField(controller.discountPercentageController),
            Text("stock"),
            textField(controller.stockController),
            Text("thumbnail"),
            textField(controller.thumbnailController),
            SizedBox(height: 50,),
            Center(
              child: ElevatedButton(onPressed: controller.addProdect, child:Text("Submit"),
              ),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),)
    );
  }
}


Widget textField(TextEditingController controller){
  return TextField(
    controller: controller,
  );
}