import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget InstallButton() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo,
      ),
      onPressed: () {
        Get.toNamed(
          '/QuizScreen',
        );
      },
      child: const Text(
        "Install",
        style: TextStyle(fontSize: 18),
      ),
    ),
  );
}
