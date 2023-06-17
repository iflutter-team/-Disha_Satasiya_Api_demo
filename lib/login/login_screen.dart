// ignore_for_file: use_build_context_synchronously

import 'package:api_demo/home/home_screen.dart';
import 'package:api_demo/login/login_api.dart';
import 'package:api_demo/model/login_model.dart';
import 'package:api_demo/signup/signup_screen.dart';
import 'package:flutter/material.dart';

import '../services/perference_services.dart';
import '../utlis/pref_strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginUser? loginUsermodel;
  TextEditingController emaillogin = TextEditingController();
  TextEditingController passwordlogin = TextEditingController();

  Future loginUser() async {
    Map<String, dynamic> body = {
      "email": emaillogin.text.trim(),
      "Password": passwordlogin.text.trim(),
    };

    loginUsermodel = await LoginApi.loginUser(body);
    if (loginUsermodel != null && loginUsermodel!.status == 1) {
      PerfServices.setvalue(PerfResourceString.isSignp, true);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("SucessFully Login Enjoy Your Home Screen"),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emaillogin,
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
              controller: passwordlogin,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('New User!'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: const Text("Sign Up"),
                )
              ],
            ),
            MaterialButton(
              color: Colors.indigo,
              onPressed: () {
                setState(() {
                  loginUser();
                });
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const HomeScreen(),
                //   ),
                // );
              },
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
