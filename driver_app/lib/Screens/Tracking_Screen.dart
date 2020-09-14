import 'package:driver_app/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrakingScreen extends StatefulWidget {
  @override
  _TrakingScreenState createState() => _TrakingScreenState();
}

class _TrakingScreenState extends State<TrakingScreen> {
  @override
  Widget build(BuildContext context) {
    var cp = CameraPosition(
      target: LatLng(18.4088, 76.5604),
      zoom: 10,
      tilt: 50,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkRed,
        title: Text('Order Status'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more),
            onPressed: () {},
          ),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: cp,
      ),
    );
  }
}
