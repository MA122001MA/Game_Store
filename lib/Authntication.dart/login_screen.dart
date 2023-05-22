import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            /////================================> images
            Image.asset(
              'assets/images/raster/login.jpg',
              height: 150,
            ),
            /////================================> Title
            const SizedBox(
              height: 20,
            ),
            Text(
              'SIGN IN',
              style: GoogleFonts.robotoCondensed(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 214, 69, 100)),
            ),
            /////================================> subtitle
            Text(
              'Welcome to our website , Nice To see you again ! ',
              style: GoogleFonts.robotoCondensed(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 130, 101, 158)),
            ),

            const SizedBox(
              height: 50,
            ),
            /////================================> Email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter Your Email ',
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            /////================================> password
            const SizedBox(
              height: 15,
            ),
            /////================================> Email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter Your Password',
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            /////================================> forget msg
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'forget password ?         ',
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            /////================================> sign in Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 214, 69, 100),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Get.toNamed('/SplashScreen');
                    });
                  },
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Colors.white),
                  ),
                )),
              ),
            ),
            /////================================> sign up link
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Not have an account ? ',
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Get.toNamed('/registerScreen');
                    });
                  },
                  child: const Text(
                    'Sign up here',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
