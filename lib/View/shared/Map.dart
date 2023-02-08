// ignore_for_file: prefer_const_constructors, file_names, unused_field, prefer_final_fields, prefer_interpolation_to_compose_strings, import_of_legacy_library_into_null_safe, avoid_print

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyFirstMap extends StatefulWidget {
  const MyFirstMap({super.key});

  @override
  State<MyFirstMap> createState() => _MyFirstMapState();
}

class _MyFirstMapState extends State<MyFirstMap> {
  Completer<GoogleMapController> _controler = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(25.054174307847017, 55.20179701292062),
    zoom: 14.4746,
  );
  List<Marker> _marker = [];
  List<Marker> _list = [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(25.054174307847017, 55.20179701292062),
        infoWindow: InfoWindow(
          title: "Mobile Car Fixer",
        )),
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(25.056478524183564, 55.20127069658607),
        infoWindow: InfoWindow(
          title: "Mobile Car Fixer2",
        )),
  ];
  // Future<Position> getUserCurrentLocation() async {
  //   await Geolocator.requestPermission
  //       .then((value) {})
  //       .onError((error, stacktrace) {
  //     print("error" + error.toString());
  //   });
  // }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controler.complete(controller);
        },
        mapType: MapType.normal,
        compassEnabled: true,
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        markers: Set<Marker>.of(_marker),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.directions_sharp),
        onPressed: () async {
          // getUserCurrentLocation();
          GoogleMapController controller = await _controler.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(25.056478524183564, 55.20127069658607),
              zoom: 14,
            ),
          ));
        },
      ),
    );
  }
}
