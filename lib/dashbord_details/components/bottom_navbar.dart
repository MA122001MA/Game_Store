import 'package:flutter/material.dart';

Widget customBackground(var child) {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, -5),
          color: Colors.black12,
          blurRadius: 10,
        )
      ],
    ),
    child: child,
  );
}
