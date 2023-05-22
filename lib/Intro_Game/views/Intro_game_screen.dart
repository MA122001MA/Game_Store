import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/shared.dart';
import '../components/background_image.dart';
import '../components/button.dart';
import '../components/title_subtitle.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7A6DDA),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 5),
                BackgroundImage(),
                const SizedBox(height: 15),
                title(),
                const SizedBox(height: 15),
                subtitle(),
                const Spacer(flex: 3),
                MainBtn(
                    const Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    width * 0.8,
                    height * 0.07,
                    10,
                    const Color(0xffF23B5F),
                    const Color(0xff7A6DDA), () {
                  setState(() {
                    Get.toNamed('/DashbordScreen');
                  });
                }),
                const Spacer(flex: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
