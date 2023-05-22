import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          iconImage(),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Title(),
                const SizedBox(height: 5),
                SubTitle(),
                const SizedBox(height: 10),
                ratingAndTotalDownload(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget iconImage() {
    return SizedBox(
      width: 80,
      height: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/images/raster/ori blind forest/ori-icon.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget Title() {
    return const Text(
      "Ori And The Blind Forest",
      style: TextStyle(fontSize: 20, color: Colors.black),
    );
  }

  Widget SubTitle() {
    return const Text(
      "Adventure",
      style: TextStyle(fontSize: 15, color: Colors.grey),
    );
  }

  Widget ratingAndTotalDownload() {
    return Row(
      children: const [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        SizedBox(width: 2),
        Text(
          "4.7",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 20),
        Icon(
          Icons.download_rounded,
          color: Colors.redAccent,
          size: 20,
        ),
        SizedBox(width: 2),
        Text(
          "300",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
