import 'package:api_demo/screen/signup/signup_screen_widget.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
   const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                signupText(),
                const SizedBox(height: 10,),
                signupTextfiled(),
                const SizedBox(height: 40,),
                signupButton(),
              ],
            ),
          ),
        ),
      )
    );
  }
}
