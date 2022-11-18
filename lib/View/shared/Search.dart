// ignore_for_file: implementation_imports, file_names, prefer_const_constructors, use_function_type_syntax_for_parameters, unused_local_variable, no_leading_underscores_for_local_identifiers, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:static_api/api/static_api.dart';

import 'Home.dart';
import 'Profile.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final _currentindex = 1;
  dynamic list = Photos_Api.datalist[0]["products"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 12.0,
              ),
              TextField(
                // onChanged: ((value) => _runfilter(value)),
                decoration: InputDecoration(
                    fillColor: Colors.red,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(30.0)),
                    hintText: '  Search Now...',
                    hintStyle: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                    suffixIcon: Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 12.0,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      // key:
                      // Valuekey(list[index]["id"]),
                      color: Colors.red,
                      elevation: 4,
                      margin: EdgeInsets.symmetric(vertical: 12.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 20.0,
                          backgroundImage:
                              NetworkImage("${list[index]["thumbnail"]}"),
                          backgroundColor: Colors.white,
                        ),
                        title: Text(
                          "${list[index]["title"]}",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "${list[index]["description"]}",
                          style: TextStyle(
                              color: Colors.black, fontStyle: FontStyle.normal),
                        ),
                        trailing: Text(
                          "${list[index]["rating"]}",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    );
                  },
                ),
              ),
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
      ),
    );
  }
}
