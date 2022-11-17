// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, file_names, unused_import, non_constant_identifier_names, unused_local_variable, sort_child_properties_last, deprecated_member_use, no_leading_underscores_for_local_identifiers, unused_element, camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:static_api/View/Authentication.dart';
import 'package:static_api/View/LoginScreen.dart';

import '../SignUpScreen.dart';
import '../components/Customtexfield.dart';

class Forgot_Password extends StatefulWidget {
  const Forgot_Password({super.key});

  @override
  State<Forgot_Password> createState() => _Forgot_PasswordState();
}

class _Forgot_PasswordState extends State<Forgot_Password> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _newpasswordController =
        TextEditingController();
    final TextEditingController _confirmpasswordController =
        TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _confirmpasswordController.dispose();
      _passwordController.dispose();
      _newpasswordController.dispose();
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
                  "Forgot Password",
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
                      "Create your new password!",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    SizedBox(
                      height: Height * .09,
                    ),
                    customtextfield(
                        controller: _passwordController,
                        hintText: "Enter Current password",
                        labelText: "Enter Current password"),
                    SizedBox(
                      height: 12.0,
                    ),
                    customtextfield(
                        controller: _newpasswordController,
                        hintText: "Enter New password",
                        labelText: "Enter New password"),
                    SizedBox(
                      height: 12.0,
                    ),
                    customtextfield(
                        controller: _confirmpasswordController,
                        hintText: "Confirm password",
                        labelText: "Confirm password"),
                    SizedBox(
                      height: 120.0,
                    ),
                    SizedBox(
                      width: Width * 0.88,
                      height: Height * 0.2 / 3,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: Text(
                          "Confirm",
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
                    SizedBox(
                      height: 12.0,
                    ),
                    SizedBox(
                      width: Width * 0.88,
                      height: Height * 0.2 / 3,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: Text(
                          "<      back to login     >",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            elevation: 5,
                            shadowColor: Colors.black,
                            primary: Colors.black45,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0))),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
