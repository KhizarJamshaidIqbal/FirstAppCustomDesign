// ignore_for_file: implementation_imports, camel_case_types, prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../api/static_api.dart';

class profile_pic_window extends StatefulWidget {
  const profile_pic_window({super.key});

  @override
  State<profile_pic_window> createState() => _profile_pic_windowState();
}

class _profile_pic_windowState extends State<profile_pic_window> {
  dynamic list = Photos_Api.datalist[0]["products"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 14.0),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.white30,
                        builder: (BuildContext context) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: SizedBox(
                              height: 230.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.download,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      "Save to Phone",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.location,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      'Share external',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.chat_bubble,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      'Send Personal Message',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.exclamationmark_square,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      'Find support or report photo',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Icon(
                    CupertinoIcons.ellipsis_vertical,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130.0),
              child: Container(
                width: double.infinity,
                height: 350,
                color: Colors.red,
                child: Image(
                    image: AssetImage("Images/blue.jpg"), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190, bottom: 5.0),
              child: Container(
                height: 1.0,
                width: double.infinity,
                color: Colors.grey,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.location,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
