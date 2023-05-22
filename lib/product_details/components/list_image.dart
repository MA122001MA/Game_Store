import 'package:flutter/material.dart';

class ScreenshotImages extends StatefulWidget {
  const ScreenshotImages({super.key});

  @override
  State<ScreenshotImages> createState() => _ScreenshotImagesState();
}

class _ScreenshotImagesState extends State<ScreenshotImages> {
  List listImages = [
    ("assets/images/raster/ori blind forest/ori-1.jpg"),
    ("assets/images/raster/ori blind forest/ori-2.jpg"),
    ("assets/images/raster/ori blind forest/ori-3.jpg"),
    ("assets/images/raster/ori blind forest/ori-4.jpg"),
    ("assets/images/raster/ori blind forest/ori-5.jpg"),
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
