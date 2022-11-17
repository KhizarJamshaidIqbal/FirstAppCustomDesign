// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_import, implementation_imports, unused_import, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class customtextfield extends StatelessWidget {
  final TextEditingController controller;
  String hintText;
  String labelText;

  customtextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(12.0)),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.red,
          fontStyle: FontStyle.normal,
        ),
        labelText: labelText,
        hintMaxLines: 1,
      ),
    );
  }
}
