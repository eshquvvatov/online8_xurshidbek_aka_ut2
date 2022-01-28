import 'package:flutter/material.dart';
import 'package:online8_xurshidbek_aka_ut/pages/demo_animation.dart';
import 'package:online8_xurshidbek_aka_ut/pages/home_page.dart';
import 'package:online8_xurshidbek_aka_ut/telegram_intro/telegram.dart';
import 'package:online8_xurshidbek_aka_ut/tiktok_clone_simple/intro_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage(),
    );
  }
}
