import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../components/categoryButtons_Screen.dart';
import '../../components/shared.dart';
import '../components/bottom_navbare_screen.dart';
import '../components/dashbord_title_subtitle.dart';
import '../components/logo_profile.dart';
import '../components/popular_game_screen.dart';
import '../components/rating_bar.dart';
import '../components/search_text _screen.dart';
import '../components/newest_game.dart';

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({super.key});

  @override
  State<DashbordScreen> createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  double rate = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff7A6DDA),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  width: width,
                  height: height * 0.3,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      // bottom: 3,
                      right: 15,
                      left: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            titleDashbord(),
                            LogoProfile(),
                          ],
                        ),
                        subtitleDashbord(),
                        const SizedBox(
                          height: 25,
                        ),
                        const SearchTextField(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CategoryButtons(),
                const PopularGame(),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    textAlign: TextAlign.left,
                    "Newest Game",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Newest_Game(
                    "assets/images/raster/ori blind forest/ori-1.jpg",
                    "Ori And The Blind Forest",
                    "Adventure",
                    Starts(rate, false, saveRating), () {
                  setState(() {
                    Get.toNamed('/ProductGame');
                  });
                }),
                const SizedBox(
                  height: 10,
                ),
                Newest_Game(
                    "assets/images/raster/rayman legends/rl-1.jpg",
                    "Rayman Legends Game",
                    "Action",
                    Starts(rate, false, saveRating), () {
                  setState(() {
                    Get.toNamed('/ProductGame2');
                  });
                }),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }

  saveRating(double value) {
    setState(() {
      rate = value;
    });
    print(rate);
  }
}
