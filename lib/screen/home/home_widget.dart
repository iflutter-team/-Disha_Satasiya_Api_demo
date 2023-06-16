import 'package:api_demo/screen/home/home_controller.dart';
import 'package:api_demo/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar homeAppbar = AppBar(
  backgroundColor: Colors.blue,
  title: const Text(StringRes.homeTitle),
  centerTitle: true,
);

Widget productList() {
  return GetBuilder<Homescrencontroller>(
    id: "prodect",
    builder: (controller) {
      return controller.productData != null
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemCount: controller.productData!.products!.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6),),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 5)],
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      controller.productData!.products![index].thumbnail!))),
                        ),
                      ),
                      Text(
                        controller.productData!.products![index].title.toString(),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children:  [
                          Text("${controller.productData!.products![index].price}",),
                              Row(
                                children: [
                                  const Icon(Icons.star_rate_rounded,color: Color(0xFFff9800),),
                                  Text("${controller.productData!.products![index].rating}",),
                                ],
                              ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          : const Center(child: CircularProgressIndicator());
    },
  );
}

Widget flotingAcctionButton(BuildContext context){
  return GetBuilder<Homescrencontroller>(builder: (controller) => FloatingActionButton(
    onPressed:()=> controller.onTapAddProduct(context),
    child: Icon(Icons.add),
  ),
  );
}