import 'package:flutter/material.dart';

Widget LogoProfile() {
  return const SizedBox(
    width: 50,
    height: 50,
    child: CircleAvatar(
      backgroundImage:
          AssetImage("assets/images/raster/logo-gia-developer.png"),
      radius: 50,
    ),
  );
}
