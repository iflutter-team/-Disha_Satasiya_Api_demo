
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailRegs = TextEditingController();
  TextEditingController passwordRegs = TextEditingController();
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
                Navigator.of(context).pop();
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
