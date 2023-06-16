import 'package:api_demo/utils/string_res.dart';
import 'package:flutter/material.dart';

Widget signupText(){
  return Text(StringRes.signTexttitle,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w500),);
}
Widget signupTextfiled(){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(Icons.account_circle),
            labelText: StringRes.nametitle,
            hintText: StringRes.name1title,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(Icons.phone),
            labelText: StringRes.phonetitle,
            hintText: StringRes.phone1title,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(Icons.mail),
            labelText: StringRes.emailtitle,
            hintText: StringRes.email1title,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(Icons.remove_red_eye),
            labelText: StringRes.passwordtitle,
            hintText: StringRes.password1title,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(Icons.visibility_off),
            labelText: StringRes.confirmtitle,
            hintText: StringRes.confirm1title,
          ),
        ),
      ),
    ],
  );
}
Widget signupButton(){
  return MaterialButton(
    minWidth: 320,
    color: Colors.white,
    onPressed: () {  },
    child: Text(StringRes.signtitle),
  );
}
