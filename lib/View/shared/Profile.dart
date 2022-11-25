// ignore_for_file: file_names, implementation_imports, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:static_api/View/shared/Forgot_Password.dart';
import 'package:static_api/View/shared/Home.dart';
import 'package:static_api/View/shared/Map.dart';
import 'package:static_api/View/shared/profile_pic_window.dart';

import 'Search.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // final _currentindex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 212,
              width: double.infinity,
              child: Image(
                image: AssetImage("Images/blue.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .1699,
              left: MediaQuery.of(context).size.width * .329,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyFirstMap(),
                        ));
                  },
                  child: CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage("Images/blue.jpg"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
