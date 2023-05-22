import 'package:flutter/material.dart';

Widget MainBtn(var child, double w, double h, double r, Color bgColor,
    Color bordercolor, press) {
  return GestureDetector(
    onTap: press,
    child: Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: bordercolor, width: 2),
          borderRadius: BorderRadius.circular(r)),
      child: Center(
        child: child,
      ),
    ),
  );
}
