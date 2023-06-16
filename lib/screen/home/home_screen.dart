import 'package:api_demo/screen/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(Homescrencontroller());
    return Scaffold(
     appBar: homeAppbar,
      body: productList(),
      floatingActionButton: flotingAcctionButton(context),
    );
  }
}
