import 'package:flutter/material.dart';

import '../../dashbord_details/components/rating_bar.dart';

class RatingAndReviweGame extends StatefulWidget {
  const RatingAndReviweGame({super.key});

  @override
  State<RatingAndReviweGame> createState() => _RatingAndReviweGameState();
}

class _RatingAndReviweGameState extends State<RatingAndReviweGame> {
  double rate = 4;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          title(),
          Row(
            children: [
              ratingText(),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Starts(rate, false, saveRating),
                  const SizedBox(height: 10),
                  reviewText(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget ratingText() {
    return const Text(
      "4.7",
      style: TextStyle(
        fontSize: 55,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Ratings and Review",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
            style: TextButton.styleFrom(primary: Colors.grey),
            onPressed: () {},
            child: Text("View"))
      ],
    );
  }

  Widget reviewText() {
    return const Text(
      "15 review",
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      ),
    );
  }

  saveRating(double value) {
    setState(() {
      rate = value;
    });
    print(rate);
  }
}
