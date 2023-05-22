import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  void openLoginScreen() {
    Navigator.of(context).pushReplacementNamed('LoginScreen');
  }

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
              'SIGN UP',
              style: GoogleFonts.robotoCondensed(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 214, 69, 100)),
            ),
            /////================================> subtitle
            Text(
              'Welcome to our website , Here you can create new an account! ',
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoCondensed(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 130, 101, 158)),
            ),
            const SizedBox(
              height: 50,
            ),
            /////================================> username
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
                        hintText: 'Username ', border: InputBorder.none),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
                        hintText: 'Email ', border: InputBorder.none),
                  ),
                ),
              ),
            ),
            /////================================> password
            const SizedBox(
              height: 10,
            ),

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
                        hintText: 'Password', border: InputBorder.none),
                  ),
                ),
              ),
            ),
            /////================================> confirm password
            const SizedBox(
              height: 10,
            ),

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
                        hintText: 'Confirm Password', border: InputBorder.none),
                  ),
                ),
              ),
            ),
            // /////================================> forget msg
            // const SizedBox(
            //   height: 10,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: const [
            //     Text(
            //       'forget password ?         ',
            //       style: TextStyle(color: Colors.lightBlue),
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 25,
            ),
            /////================================> sign up Button
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
                    'Sign up',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Colors.white),
                  ),
                )),
              ),
            ),
            /////================================> sign in link
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'I already have an account ? ',
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Get.toNamed('/loginScreen');
                    });
                  },
                  child: const Text(
                    'Sign in here',
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
