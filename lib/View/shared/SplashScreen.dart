// ignore_for_file: camel_case_types, implementation_imports, file_names, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../Authentication.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Authentication())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Lottie.asset("Images/1.json", fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450.0, left: 6.0),
            child: Image(image: AssetImage("Images/KSocial.png")),
          ),
        ],
      ),
    );
  }
}
