import 'package:flutter/material.dart';

Widget title() {
  return const Text(
    "Adding Fun to Your Life",
    textAlign: TextAlign.center,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        height: 1.4,
        wordSpacing: 1.8,
        letterSpacing: 1.3),
  );
}

Widget subtitle() {
  return Text(
    "We provide make more experience for playing game",
    style: TextStyle(color: Colors.grey[200], fontSize: 15),
    textAlign: TextAlign.center,
  );
}
