// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:static_api/View/SplashScreen.dart';
import 'package:static_api/View/Authentication.dart';
import 'package:static_api/View/widget_1.dart';

import 'View/LoginScreen.dart';

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
      home: SplashScreen(),
    );
  }
}
