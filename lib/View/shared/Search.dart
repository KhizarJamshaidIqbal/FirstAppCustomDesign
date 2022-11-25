// ignore_for_file: implementation_imports, file_names, prefer_const_constructors, use_function_type_syntax_for_parameters, unused_local_variable, no_leading_underscores_for_local_identifiers, unused_field, unused_import, avoid_print, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:static_api/api/static_api.dart';
import 'package:static_api/controller/listpovider.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final _currentindex = 1;
  dynamic displayList = List.from(list);
  void UpdateList(String value) {
    try {
      setState(() {
        displayList = list
            .where((element) =>
                element["description"]
                    .toLowerCase()
                    .contain(value.toLowerCase()) ||
                element["title"].toLowerCase().contain(value.toLowerCase()))
            .toList();
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 12.0,
              ),
              TextField(
                onChanged: (value) {
                  UpdateList(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.red,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(30.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(30.0)),
                    hintText: '  Search Now',
                    hintStyle: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                    suffixIcon: Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 12.0,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: displayList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: index % 2 == 0 ? Colors.red : Colors.black,
                      elevation: 4,
                      margin: EdgeInsets.symmetric(vertical: 12.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25.0,
                          backgroundImage: NetworkImage(
                              "${displayList[index]["thumbnail"]}"),
                          backgroundColor: Colors.white,
                        ),
                        title: Text(
                          "${displayList[index]["title"]}",
                          style: TextStyle(
                              color:
                                  index % 2 == 0 ? Colors.black : Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "${displayList[index]["description"]}",
                          style: TextStyle(
                              color:
                                  index % 2 == 0 ? Colors.black : Colors.white,
                              fontStyle: FontStyle.normal),
                        ),
                        trailing: Text(
                          "${displayList[index]["rating"]}",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
