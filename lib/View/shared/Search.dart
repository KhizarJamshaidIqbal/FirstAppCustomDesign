// ignore_for_file: implementation_imports, file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import 'Home.dart';
import 'Profile.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var _currentindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("search Now..."),
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
