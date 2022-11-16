// ignore_for_file: implementation_imports, file_names, prefer_const_constructors, non_constant_identifier_names, unused_local_variable, unused_import, unnecessary_import, no_leading_underscores_for_local_identifiers, unused_element, sort_child_properties_last, deprecated_member_use

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:static_api/View/components/Customtexfield.dart';

import 'LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _FirstNameController = TextEditingController();
    final TextEditingController _LastNameController = TextEditingController();
    final TextEditingController _ConfirmpasswordController =
        TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _emailController.dispose();
      _passwordController.dispose();
      _FirstNameController.dispose();
      _LastNameController.dispose();
      _ConfirmpasswordController.dispose();
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
                  "SignUp",
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
                height: Height,
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
                    const EdgeInsets.only(top: 125.0, left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi!",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Create a new account",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 235, 126, 126)),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    customtextfield(
                        controller: _FirstNameController,
                        hintText: "First Name",
                        labelText: "First Name"),
                    SizedBox(
                      height: 12.0,
                    ),
                    customtextfield(
                        controller: _LastNameController,
                        hintText: "Last Name",
                        labelText: "Last Name"),
                    SizedBox(
                      height: 12.0,
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
                        hintText: "Enter New password",
                        labelText: "Enter New password"),
                    SizedBox(
                      height: 12.0,
                    ),
                    customtextfield(
                        controller: _ConfirmpasswordController,
                        hintText: "Confirm password",
                        labelText: "Confirm password"),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: Width * 0.88,
                      height: Height * 0.2 / 3,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
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
                    ),
                    SizedBox(
                      height: Height * 0.024,
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
                      height: Height * 0.016,
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
                      height: Height * 0.015,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                              fontSize: 15.0, color: Colors.redAccent),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ));
                            },
                            child: Text("Sign in"))
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
