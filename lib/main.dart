// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:static_api/View/OnBoardingScreen/Authentication.dart';

import 'View/shared/LoginScreen.dart';
import 'View/components/BottomNavigationbar.dart';
import 'View/SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Static Api',
      home: Splash_Screen(),
    );
  }
}
