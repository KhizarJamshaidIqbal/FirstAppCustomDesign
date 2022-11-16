// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_local_variable, implementation_imports, unused_import, file_names, unused_element

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:static_api/View/Authentication.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    void initState() {
      super.initState();
      Future.delayed(
        Duration(seconds: 3),
        () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Authentication()),
          );
        },
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Lottie.asset("Images/1.json", fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450.0, left: 6.0),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Authentication()),
                  );
                },
                child: Image(image: AssetImage("Images/KSocial.png"))),
          ),
          SizedBox(
            height: 50.0,
          )
        ],
      ),
    );
  }
}
