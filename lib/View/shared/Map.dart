// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyFirstMap extends StatefulWidget {
  const MyFirstMap({super.key});

  @override
  State<MyFirstMap> createState() => _MyFirstMapState();
}

class _MyFirstMapState extends State<MyFirstMap> {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(initialCameraPosition: _kGooglePlex),
    );
  }
}
