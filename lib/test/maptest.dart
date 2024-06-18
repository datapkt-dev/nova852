import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapTest extends StatefulWidget {
  const MapTest({super.key});

  @override
  State<MapTest> createState() => _MapTestState();
}

class _MapTestState extends State<MapTest> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('地圖測試頁'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30,),
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(-33.86, 151.20),
            zoom: 15,
          ),
          markers: {
            const Marker(
              markerId: MarkerId('Sydney'),
              position: LatLng(-33.86, 151.20),
            )
          },
        ),
      )
    );
  }
}
