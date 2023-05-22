import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakenny/dashbord_details/views/DashbordScreen.dart';

import 'Authntication.dart/login_screen.dart';
import 'Authntication.dart/register_screen.dart';
import 'Intro_Game/views/Intro_game_screen.dart';
import 'play_Game.dart/quis_Screen.dart';
import 'product_details/views/product_Game.dart';
import 'product_details/views/product_Game2.dart';

void main() {
  runApp(const GameStore());
}

class GameStore extends StatefulWidget {
  const GameStore({super.key});

  @override
  State<GameStore> createState() => _GameStoreState();
}

class _GameStoreState extends State<GameStore> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      getPages: [
        GetPage(name: '/DashbordScreen', page: () => DashbordScreen()),
        GetPage(name: '/ProductGame', page: () => ProductGame()),
        GetPage(name: '/ProductGame2', page: () => ProductGame2()),
        GetPage(name: '/loginScreen', page: () => LoginScreen()),
        GetPage(name: '/SplashScreen', page: () => SplashScreen()),
        GetPage(name: '/registerScreen', page: () => RegisterScreen()),
        GetPage(name: '/QuizScreen', page: () => QuizScreen()),
      ],
    );
  }
}
