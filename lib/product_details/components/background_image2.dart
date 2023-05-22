import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/shared.dart';

class BackgroundImage2 extends StatefulWidget {
  const BackgroundImage2({super.key});

  @override
  State<BackgroundImage2> createState() => _BackgroundImage2State();
}

class _BackgroundImage2State extends State<BackgroundImage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * .4,
      child: Image.asset(
        "assets/images/raster/rayman legends/rl-1.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
