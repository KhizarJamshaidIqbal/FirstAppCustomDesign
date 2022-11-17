// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors, unnecessary_import, implementation_imports, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class LotieCard extends StatelessWidget {
  final lottieUrl;
  LotieCard({required this.lottieUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 250,
      child: Lottie.asset("$lottieUrl"),
    );
  }
}
