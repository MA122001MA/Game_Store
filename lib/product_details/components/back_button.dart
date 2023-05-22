import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButtons extends StatefulWidget {
  const BackButtons({super.key});

  @override
  State<BackButtons> createState() => _BackButtonsState();
}

class _BackButtonsState extends State<BackButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white30,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          child: const Padding(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.arrow_back_ios_rounded,
            ),
          ),
          onTap: () {
            setState(() {
              Get.back();
            });
          },
        ),
      ),
    );
  }
}
