import 'package:api_demo/screen/signup/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();

  void navigetToSignupScreen() {
    Get.to(() => const Signup());
  }
}

