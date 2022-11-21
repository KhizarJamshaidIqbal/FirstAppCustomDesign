// ignore_for_file: prefer_const_constructors, unnecessary_import, file_names, implementation_imports, prefer_const_literals_to_create_immutables, non_constant_identifier_names, override_on_non_overriding_member, unused_local_variable, no_leading_underscores_for_local_identifiers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:static_api/View/shared/Profile.dart';
import 'package:static_api/View/shared/profile_pic_window.dart';

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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ));
                          },
                          child: Image(
                            image: AssetImage("Images/KSocial.png"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Icon(CupertinoIcons.chat_bubble_2),
                      ),
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
                                  child: InkWell(
                                    onTap: (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                profile_pic_window(
                                              imgeUrl: list[index]["thumbnail"],
                                            ),
                                          ));
                                    }),
                                    child: CircleAvatar(
                                      radius: 50,
                                      backgroundColor: Colors.red,
                                      backgroundImage: NetworkImage(
                                          "${list[index]["thumbnail"]}"),
                                    ),
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
                                  child: Icon(CupertinoIcons.suit_heart),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Icon(CupertinoIcons.bubble_left),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Icon(CupertinoIcons.location),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 210.0),
                                  child: Icon(CupertinoIcons.bookmark),
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
      ),
    );
  }
}
