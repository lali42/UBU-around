import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'main.dart';

class Maps extends StatelessWidget {
  GoogleMapController mapController;
  final LatLng _center = const LatLng(15.119502296707106, 104.90928248047584);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maps'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          color: Colors.orange[200],
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.house),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ));
                },
              ),
              Text('HOME'),
            ],
          ),
        ),
      ),
    );
  }
}
