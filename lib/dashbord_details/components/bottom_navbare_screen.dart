import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'bottom_navbar.dart';
import '../../Components/Shared.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return customBackground(
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection), label: "Collection"),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_fill), label: "Installed"),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconSize: 30,
          unselectedItemColor: Colors.grey[500],
        ),
      ),
    );
  }
}
