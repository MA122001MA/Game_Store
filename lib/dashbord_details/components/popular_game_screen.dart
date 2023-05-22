import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'slider_image.dart';

class PopularGame extends StatefulWidget {
  const PopularGame({super.key});

  @override
  State<PopularGame> createState() => _PopularGameState();
}

class _PopularGameState extends State<PopularGame> {
  final List listImage = [
    SliderImage("assets/images/raster/ori blind forest/ori-1.jpg", () {
      Get.toNamed('/ProductGame');
    }),
    SliderImage("assets/images/raster/rayman legends/rl-1.jpg", () {
      Get.toNamed('/ProductGame2');
    }),
    SliderImage("assets/images/raster/ori blind forest/ori-3.jpg", () {})
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Popular Game",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: listImage.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 10 : 0,
                      right: 10,
                    ),
                    child: listImage[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
