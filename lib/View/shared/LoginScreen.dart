// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, file_names, unused_import, non_constant_identifier_names, unused_local_variable, sort_child_properties_last, deprecated_member_use, no_leading_underscores_for_local_identifiers, unused_element

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:static_api/View/OnBoardingScreen/Authentication.dart';
import 'package:static_api/View/shared/Forgot_Password.dart';
import 'package:static_api/View/shared/Home.dart';

import '../../api/card_api.dart';
import 'SignUpScreen.dart';
import '../components/BottomNavigationbar.dart';
import '../components/Customtexfield.dart';
import '../components/lotiecard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _emailController.dispose();
      _passwordController.dispose();
    }

    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: Height * 0.2,
              width: Width,
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                ),
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Raleway'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 85.0),
              child: Container(
                height: Height / 1.15,
                width: Width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(29.0),
                      topRight: Radius.circular(29.0)),
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.only(top: 140.0, left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome!",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Sign in to continue",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 235, 126, 126)),
                    ),
                    SizedBox(
                      height: Height * .09,
                    ),
                    customtextfield(
                        controller: _emailController,
                        hintText: "Enter Email Adress",
                        labelText: "Email"),
                    SizedBox(
                      height: 12.0,
                    ),
                    customtextfield(
                        controller: _passwordController,
                        hintText: "password",
                        labelText: "password"),
                    SizedBox(
                      height: 50.0,
                    ),
                    SizedBox(
                      width: Width * 0.88,
                      height: Height * 0.2 / 3,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigationbar(),
                              ));
                        },
                        child: Text(
                          "Login",
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
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Forgot_Password(),
                                  ));
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.black),
                            ))),
                    SizedBox(
                      height: Height * 0.02,
                    ),
                    Row(
                      children: [
                        Container(
                          width: Width * .38,
                          height: .5,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Text(
                            "Or",
                            style: TextStyle(color: Colors.red, fontSize: 15.0),
                          ),
                        ),
                        Container(
                          width: Width * .38,
                          height: 0.5,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: CircleAvatar(
                            child:
                                Image(image: AssetImage("Images/google.png")),
                            radius: 25.0,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: CircleAvatar(
                            child:
                                Image(image: AssetImage("Images/twitter.png")),
                            radius: 25.0,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          child:
                              Image(image: AssetImage("Images/facebook.png")),
                          radius: 25.0,
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Height * .08,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                              fontSize: 15.0, color: Colors.redAccent),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ));
                            },
                            child: Text("Sign up"))
                      ],
                    ),
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
