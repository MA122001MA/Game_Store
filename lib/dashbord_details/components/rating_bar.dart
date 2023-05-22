import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget Starts(rate, bool disable, action) {
  return RatingBar.builder(
    initialRating: rate,
    ignoreGestures: disable,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemSize: 15,
    itemCount: 5,
    unratedColor: const Color.fromRGBO(213, 213, 213, 1),
    itemPadding: const EdgeInsets.symmetric(horizontal: 0),
    itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
    onRatingUpdate: action,
  );
}
