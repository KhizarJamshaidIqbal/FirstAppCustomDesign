// ignore_for_file: prefer_const_constructors, unnecessary_import, file_names, implementation_imports, prefer_const_literals_to_create_immutables, non_constant_identifier_names, override_on_non_overriding_member, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../api/static_api.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    dynamic list = Photos_Api.datalist[0]["products"];
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Home"),
        //   backgroundColor: Colors.red,
        //   centerTitle: true,
        //   leading: GestureDetector(
        //     onTap: () {},
        //     child: Icon(Icons.home),
        //   ),
        //   actions: [
        //     InkWell(
        //         onTap: () {
        //           Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => LoginScreen(),
        //               ));
        //         },
        //         child: Icon(Icons.logout)),
        //     Padding(
        //       padding: const EdgeInsets.only(right: 5.0, left: 5.0),
        //       child: Icon(Icons.more_vert),
        //     )
        //   ],
        // ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Column(
              children: [
                SizedBox(
                  height: 60.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 100.0,
                        child: Image(
                          image: AssetImage("Images/KSocial.png"),
                        ),
                      ),
                      Icon(Icons.message_outlined),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Container(height: 0.1, color: Colors.black),
                ),
                SizedBox(
                  height: 110.0,
                  child: Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 3.0, left: 3.0),
                                child: CircleAvatar(
                                  radius: 52,
                                  backgroundColor: Colors.redAccent,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Colors.red,
                                    backgroundImage: NetworkImage(
                                        "${list[index]["thumbnail"]}"),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, top: 5),
                  child: Container(height: 0.1, color: Colors.black),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            trailing:
                                Icon(Icons.more_vert, color: Colors.black),
                            leading: CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage:
                                  NetworkImage("${list[index]["thumbnail"]}"),
                              radius: 40,
                            ),
                            title: Text("Album Id: ${list[index]["id"]}"),
                            subtitle: Text("title: ${list[index]["title"]}"),
                          ),
                          SizedBox(
                            height: 300,
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: list[index]["images"].length,
                                    itemBuilder: (context, index2) {
                                      return Image(
                                          image: NetworkImage(
                                              "${list[index]["images"][index2]}"));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Icon(Icons.heart_broken_outlined),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Icon(Icons.message_outlined),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Icon(Icons.send_sharp),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 210.0),
                                  child: Icon(Icons.bookmark_outline_outlined),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
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
        ),
      ),
    );
  }
}
