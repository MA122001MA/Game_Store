import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'navbar_categorys.dart';

class CategoryButtons extends StatefulWidget {
  const CategoryButtons({super.key});

  @override
  State<CategoryButtons> createState() => _CategoryButtonsState();
}

class _CategoryButtonsState extends State<CategoryButtons> {
  final List listbuttons = [
    CustomButtons(
      const Icon(
        FontAwesomeIcons.skiing,
        color: Colors.white,
      ),
      Colors.green,
      "Sport",
    ),
    CustomButtons(
      const Icon(
        FontAwesomeIcons.chess,
        color: Colors.white,
      ),
      Colors.blue,
      "Strategy",
    ),
    CustomButtons(
      const Icon(
        FontAwesomeIcons.meteor,
        color: Colors.white,
      ),
      Colors.redAccent,
      "Action",
    ),
    CustomButtons(
      const Icon(
        FontAwesomeIcons.guitar,
        color: Colors.white,
      ),
      Colors.brown,
      "musical",
    ),
    CustomButtons(
      const Icon(
        FontAwesomeIcons.car,
        color: Colors.white,
      ),
      Colors.blue,
      "simulation",
    ),
    CustomButtons(
      const Icon(
        FontAwesomeIcons.meteor,
        color: Colors.white,
      ),
      Colors.redAccent,
      "Action",
    ),
    CustomButtons(
      const Icon(
        FontAwesomeIcons.chess,
        color: Colors.white,
      ),
      Colors.blue,
      "Strategy",
    ),
    CustomButtons(
      const Icon(
        Icons.more_horiz,
        color: Colors.white,
      ),
      Colors.indigoAccent,
      "more",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: listbuttons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 10 : 0,
              right: 10,
            ),
            child: listbuttons[index],
          );
        },
      ),
    );
  }
}
