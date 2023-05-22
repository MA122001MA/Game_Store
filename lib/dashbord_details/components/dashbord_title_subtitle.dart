import 'package:flutter/material.dart';

Widget titleDashbord() {
  return const Text(
    "Welcome, Mohamed",
    style: TextStyle(
        color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
  );
}

Widget subtitleDashbord() {
  return Text(
    "What would you like to play ?",
    style: TextStyle(
      color: Colors.grey[200],
      fontSize: 18,
    ),
  );
}
