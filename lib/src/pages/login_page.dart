// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginapp/src/components/my_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: usernameController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Text saying hello

            Icon(Icons.android, size: 100),
            Text(
              'Snow App',
              style: GoogleFonts.bebasNeue(
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // email textfield
            Text(
              'Welcome back you\'ve been missed!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            const SizedBox(
              height: 50,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            //password textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            // signin button
            MyButton(
              onTap: signUserIn,
            ),

            const SizedBox(
              height: 25,
            ),

            // register now

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Not a member?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(' Register now!',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
