import 'dart:async';

import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:search_map_place/search_map_place.dart';

String apiKey="AIzaSyD6_hOjYwTwCD-WYG33ol5oWmikS8diRDc";

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  Completer<GoogleMapController> _mapController = Completer();

  final CameraPosition _initialCamera = CameraPosition(
    target: LatLng(-20.3000, -40.2990),
    zoom: 14.0000,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _initialCamera,
            onMapCreated: (GoogleMapController controller) {
              _mapController.complete(controller);
            },
          ),
          Positioned(
            top: 60,
            left: MediaQuery.of(context).size.width * 0.05,
            child: SearchMapPlaceWidget(
              apiKey: "AIzaSyD6_hOjYwTwCD-WYG33ol5oWmikS8diRDc",
              onSelected: (place) async {
                final geolocation = await place.geolocation;
                final GoogleMapController controller =
                    await _mapController.future;
                controller.animateCamera(
                    CameraUpdate.newLatLng(geolocation.coordinates));
                controller.animateCamera(
                    CameraUpdate.newLatLngBounds(geolocation.bounds, 0));
              },
            ),
          ),
        ],
      ),
    );

    // @override
    // Widget build(BuildContext context) {
    //   return Scaffold(
    //    // extendBodyBehindAppBar: true,
    //     appBar: AppBar(
    //       title: Text(
    //         'Find your places !',
    //         style: TextStyle(
    //           fontSize: 20,
    //           fontWeight: FontWeight.w300,
    //           color: Colors.white,
    //         ),
    //       ),
    //       // flexibleSpace: Image( image: AssetImage('assets/images/mountblue.jpg'), fit: BoxFit.cover,),
    //       //backgroundColor: Color(0x44000000),
    //     //  elevation: 0,
    //     ),
    //     body: Container(
    //       width: MediaQuery.of(context).size.height,
    //       height: MediaQuery.of(context).size.width,
    //       // decoration: BoxDecoration(
    //       //     image: DecorationImage(
    //       //       image: AssetImage('assets/images/galle.jpg'),
    //       //       colorFilter: ColorFilter.mode(
    //       //           Colors.black.withOpacity(0.7), BlendMode.dstATop),
    //       //       fit: BoxFit.cover,
    //       //     ),
    //       //     color: Colors.lightBlueAccent),
    //       // child: Column(children: <Widget>[
    //       //   SizedBox(
    //       //     height: 80,
    //       //   ),

    //      child:  Stack(
    //         children: <Widget>[
    //         //      BeautyTextfield(
    //         //   width: double.maxFinite,
    //         //   height: 60,
    //         //   inputType: TextInputType.text,
    //         //   prefixIcon: Icon(Icons.search),
    //         //   placeholder: "Search",
    //         //   onTap: () => {},
    //         //   onSubmitted: (data) => {},
    //         // ),

    //         ],
    //       ),

    //     ),
    //   );
  }
}
