// ignore_for_file: camel_case_types, unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../api/static_api.dart';

class static_api extends StatefulWidget {
  const static_api({super.key});

  @override
  State<static_api> createState() => _static_apiState();
}

class _static_apiState extends State<static_api> {
  @override
  Widget build(BuildContext context) {
    dynamic list = Photos_Api.datalist[0]["products"];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
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
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
