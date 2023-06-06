import 'package:flutter/material.dart';
import 'package:task/Day3/images.dart';
import 'package:task/Screens/Login.dart';
import 'package:task/Screens/NavBar.dart';
import 'package:task/Screens/Profile.dart';
import 'package:task/Screens/Quiz.dart';
import 'package:task/Screens/Score.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        'navBar': (BuildContext context) => const NavBar(),
        'login': (BuildContext context) => const Login(),
        'profile': (BuildContext context) => const Profile(),
        'quiz': (BuildContext context) => const Quiz(),
        'score': (BuildContext context) => Score(),
        'images': (BuildContext context) => const Images(),
      },
      initialRoute: 'navBar',
    );
  }
}
