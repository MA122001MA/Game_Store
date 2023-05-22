import 'package:flutter/material.dart';

import '../../components/shared.dart';

Widget BackgroundImage() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Align(
        alignment: Alignment.center,
        child: Image.asset(
          "assets/images/raster/phone-3d.png",
          width: width * .8,
        ),
      ),
    ],
  );
}
