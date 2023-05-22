import 'package:flutter/material.dart';

Widget CustomButtons(var child, Color color, var text) {
  return Column(
    children: [
      Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: child),
      const SizedBox(
        height: 10,
      ),
      Text(
        "$text",
        style: TextStyle(color: Colors.teal),
      ),
    ],
  );
}
