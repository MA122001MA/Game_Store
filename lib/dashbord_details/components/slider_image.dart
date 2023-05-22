import 'package:flutter/material.dart';

Widget SliderImage(var image, var press) {
  return GestureDetector(
    onTap: press,
    child: Container(
      width: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
