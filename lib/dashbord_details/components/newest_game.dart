import 'package:flutter/material.dart';

import '../../components/shared.dart';

Widget Newest_Game(var image, title, type, star, press) {
  return GestureDetector(
    onTap: press,
    child: Container(
      // margin: EdgeInsets.only(left: 20),
      width: width * 0.99,
      height: 85,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        // border: Border.all(width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
          ),
        ],
      ),
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // SizedBox(
            //   width: 3,
            // ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(title),
                const SizedBox(
                  height: 5,
                ),
                Text(type),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 90,
                  child: star,
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(right: 10, top: 40),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {},
                child: const Text(
                  "Install",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
