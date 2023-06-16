import 'package:api_demo/screen/login/login_controller.dart';
import 'package:api_demo/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget loginText(){
  return Text(StringRes.logtexttitle,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w300),);
}
Widget loginTextfiled(){
        return Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.mail),
                  labelText: StringRes.labelTexttitle,
                  hintText: StringRes.hintTexttitle,
                ),
              ),
            );
}
Widget loginTextfiled1(){
  return Padding(
    padding: const EdgeInsets.all(8),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.lock),
        labelText: StringRes.labelText1title,
        hintText: StringRes.hintText1title,
      ),
    ),
  );
}

Widget loginButton(){
  return  MaterialButton(
    minWidth: 320,
    color: Colors.white,
    onPressed: () {  },
    child: Text(StringRes.logintitle),
  );
}
Widget signupbutton() {
  return GetBuilder<LoginController>(
    builder: (controller) => TextButton(
      onPressed: controller.navigetToSignupScreen,
      child: Text(
        StringRes.signupButtontitle,
        style: const TextStyle(color: Colors.black),
      ),
    ),
  );
}


