import 'package:flutter/material.dart';

class ScreenshotImages2 extends StatefulWidget {
  const ScreenshotImages2({super.key});

  @override
  State<ScreenshotImages2> createState() => _ScreenshotImages2State();
}

class _ScreenshotImages2State extends State<ScreenshotImages2> {
  List listImages = [
    ("assets/images/raster/rayman legends/rl-1.jpg"),
    ("assets/images/raster/rayman legends/rl-2.jpg"),
    ("assets/images/raster/rayman legends/rl-3.jpg"),
    ("assets/images/raster/rayman legends/rl-4.jpg"),
    ("assets/images/raster/rayman legends/rl-5.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listImages.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: (index == 0) ? 20 : 0,
              right: 20,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                listImages[index],
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
