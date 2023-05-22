import 'package:flutter/material.dart';

import '../../components/shared.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.94,
      height: height * 0.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Row(
        children: const [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            size: 25,
            color: Colors.blue,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "Search Game",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
