import 'package:api_demo/screen/login/login_controller.dart';
import 'package:api_demo/screen/login/login_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      body: Stack(
          children: [
           Image.asset('assets/images/Login.png'),
           Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                loginText(),
                const SizedBox(height: 20,),
                loginTextfiled(),
                const SizedBox(height: 10,),
                loginTextfiled1(),
                const SizedBox(height: 40,),
                loginButton(),
                const SizedBox(height: 10,),
                signupbutton(),
              ],
            ),
          ),
        ],
        ),
    );
  }
}
