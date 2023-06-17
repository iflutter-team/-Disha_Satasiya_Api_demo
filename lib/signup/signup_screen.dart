// ignore_for_file: use_build_context_synchronously

import 'package:api_demo/login/login_screen.dart';
import 'package:api_demo/model/signup_model.dart';
import 'package:api_demo/signup/signup_api.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUp? signupUser;

  TextEditingController emailRegs = TextEditingController();
  TextEditingController passwordRegs = TextEditingController();
  TextEditingController firstnameregs = TextEditingController();
  TextEditingController lastnameregs = TextEditingController();
  Future<void> userSignUp() async {
    Map<String, dynamic> body = {
      "FirstName": firstnameregs.text.trim(),
      "LastName": lastnameregs.text.trim(),
      "EmailId": emailRegs.text.trim(),
      "Password": passwordRegs.text.trim(),
    };
    signupUser = await SignUpApi.registerUser(body);
    if (signupUser != null && signupUser!.status == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("SucessFully Sign Up Enjoy Your Login Screen"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 2),
          content: Text("Alerdy Exists!!"),
        ),
      );
    }
  }
//process ontap function ani under body and e signup function banavu and
  ///trim() pachal jetli space hoy e remove kare

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text("Sign Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstnameregs,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                labelText: 'Enter your FirstName',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: lastnameregs,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                labelText: 'Enter your Lastname',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailRegs,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                labelText: 'Enter your Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordRegs,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.password),
                labelText: 'Enter your Paasword',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.indigo,
              onPressed: () {
                userSignUp();
                setState(() {});

                // Navigator.of(context).pop();
              },
              child: const Text(
                "SignUp",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
