import 'package:driver_app/Components/Buttons_widget.dart';
import 'package:driver_app/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CancelOrderScreen extends StatefulWidget {
  @override
  _CancelOrderScreenState createState() => _CancelOrderScreenState();
}

class _CancelOrderScreenState extends State<CancelOrderScreen> {
  String colorGroupValue = '';

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
        centerTitle: true,
        title: Text('Cancel Orders'),
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            child: GoogleMap(initialCameraPosition: cp),
          ),
          Positioned(
            height: 600,
            width: 410,
            child: Center(
              child: Container(
                margin: EdgeInsets.all(40),
                color: white,
                height: 400,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Select Cancellation Reason',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: darkRed),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          activeColor: darkRed,
                          value: 'Red',
                          groupValue: colorGroupValue,
                          onChanged: (val1) {
                            colorGroupValue = val1;
                            setState(() {});
                          },
                        ),
                        Text(
                          'Unforeseen Natural Disaster',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: darkRed,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          activeColor: darkRed,
                          value: 'Red',
                          groupValue: colorGroupValue,
                          onChanged: (val2) {
                            colorGroupValue = val2;
                            setState(() {});
                          },
                        ),
                        Text(
                          'A legal obligation',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: darkRed,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          activeColor: darkRed,
                          value: 'Red',
                          groupValue: colorGroupValue,
                          onChanged: (val3) {
                            colorGroupValue = val3;
                            setState(() {});
                          },
                        ),
                        Text(
                          'Customer not available',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: darkRed,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          activeColor: darkRed,
                          value: 'Red',
                          groupValue: colorGroupValue,
                          onChanged: (val4) {
                            colorGroupValue = val4;
                            setState(() {});
                          },
                        ),
                        Text(
                          'Customer did not accept \nthe delivery',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: darkRed,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          activeColor: darkRed,
                          value: 'Red',
                          groupValue: colorGroupValue,
                          onChanged: (val5) {
                            colorGroupValue = val5;
                            setState(() {});
                          },
                        ),
                        Text(
                          'Other',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: darkRed,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),

                    SubmitButton(), // Button for Submit in Cancellation Order Screen
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
