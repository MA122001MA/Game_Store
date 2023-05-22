import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakenny/product_details/components/description.dart';

import '../../components/shared.dart';

import '../components/RatingAndReviwe2.dart';

import '../components/back_button.dart';
import '../components/background_image2.dart';
import '../components/description2.dart';

import '../components/header2.dart';
import '../components/installButton.dart';

import '../components/list_image2.dart';

class ProductGame2 extends StatefulWidget {
  const ProductGame2({super.key});

  @override
  State<ProductGame2> createState() => _ProductGame2State();
}

class _ProductGame2State extends State<ProductGame2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const BackgroundImage2(),
            const BackButtons(),
            Container(
              margin: EdgeInsets.only(top: height * .38),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                children: const [
                  SizedBox(height: 20),
                  Header2(),
                  SizedBox(height: 20),
                  ScreenshotImages2(),
                  SizedBox(height: 20),
                  DescriptionText2(),
                  SizedBox(height: 20),
                  RatingAndReviweGame2(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InstallButton(),
    );
  }
}
