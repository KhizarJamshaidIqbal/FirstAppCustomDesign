// ignore_for_file: unused_import, unnecessary_import, implementation_imports, file_names, prefer_const_constructors, deprecated_member_use, sort_child_properties_last, non_constant_identifier_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:static_api/View/shared/LoginScreen.dart';
import 'package:static_api/View/shared/SignUpScreen.dart';
import 'package:static_api/View/components/lotiecard.dart';

import '../../api/card_api.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 70.0),
              child: Text(
                "Authentication",
                style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Raleway'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 85.0),
              child: Container(
                height: Height,
                width: Width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(29.0),
                      topRight: Radius.circular(29.0)),
                ),
                child: Stack(
                  children: [
                    ListView.builder(
                      itemCount: Slides.SlidesShow.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 170),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Height / 5,
                                width: Width,
                                child: LotieCard(
                                    lottieUrl: Slides.SlidesShow[index]
                                        ["SlideShow"]),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor:
                                          index == 0 ? Colors.red : Colors.grey,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor:
                                          index == 1 ? Colors.red : Colors.grey,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor:
                                          index == 2 ? Colors.red : Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    Positioned(
                        top: Height * 0.64,
                        left: Width / 5.8,
                        child: SizedBox(
                          width: Width * 0.7,
                          height: Height * 0.2 / 3,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 5,
                                  shadowColor: Colors.redAccent,
                                  primary: Colors.red,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0))),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              )),
                        )),
                    Positioned(
                        top: Height * 0.75,
                        left: Width / 5.8,
                        child: SizedBox(
                          width: Width * 0.7,
                          height: Height * 0.2 / 3,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ));
                            },
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 5,
                                shadowColor: Colors.redAccent,
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0))),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
