import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakenny/product_details/components/description.dart';

import '../../components/shared.dart';
import '../components/RatingAndReviwe.dart';
import '../components/background_image.dart';
import '../components/back_button.dart';
import '../components/header.dart';
import '../components/installButton.dart';
import '../components/list_image.dart';

class ProductGame extends StatefulWidget {
  const ProductGame({super.key});

  @override
  State<ProductGame> createState() => _ProductGameState();
}

class _ProductGameState extends State<ProductGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const BackgroundImage(),
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
                  Header(),
                  SizedBox(height: 20),
                  ScreenshotImages(),
                  SizedBox(height: 20),
                  DescriptionText(),
                  SizedBox(height: 20),
                  RatingAndReviweGame(),
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
