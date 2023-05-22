import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/shared.dart';

class BackgroundImage extends StatefulWidget {
  const BackgroundImage({super.key});

  @override
  State<BackgroundImage> createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * .4,
      child: Image.asset(
        "assets/images/raster/ori blind forest/ori-1.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
