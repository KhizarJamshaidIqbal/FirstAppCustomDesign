// ignore_for_file: file_names, implementation_imports, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:static_api/View/shared/Home.dart';
import 'package:static_api/View/shared/profile_pic_window.dart';

import 'Search.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _currentindex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profile_pic_window(),
                    ));
              },
              child: SizedBox(
                height: 212,
                width: double.infinity,
                child: Image(
                  image: AssetImage("Images/blue.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .1699,
              left: MediaQuery.of(context).size.width / 3.57,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile_pic_window(),
                      ));
                },
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 70,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 65,
                    backgroundImage: AssetImage("Images/blue.jpg"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity_sharp),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentindex,
        onTap: (value) {
          setState(() {
            switch (value) {
              case 0: // code to be executed if n = 0;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
                break;
              case 1: // code to be executed if n = 1;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Search(),
                    ));
                break;
              case 2: //  // code to be executed if n = 2;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ));
            }
          });
        },
      ),
    );
  }
}
