import 'package:driver_app/Constants/Colors.dart';
import 'package:driver_app/Screens/Cancel_Orders_Screen.dart';
import 'package:driver_app/Screens/Current_Orders_Screen.dart';
import 'package:driver_app/Screens/Home_Screen.dart';
import 'package:driver_app/Screens/Tracking_Screen.dart';
import 'package:flutter/material.dart';

// Button for View on Home Page
class ViewButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          FlatButton(
            color: darkRed,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CurrentOrdersScreen(),
                ),
              );
            },
            child: Text(
              'VIEW',
              style:
                  TextStyle(fontSize: 17, fontFamily: 'Poppins', color: white),
            ),
          ),
        ],
      ),
    );
  }
}

class OpenMapButton extends StatelessWidget {
  final String btntext;
  OpenMapButton({this.btntext});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: SizedBox(
        height: 43,
        width: double.infinity,
        child: FlatButton(
          child: Text("Open Map",
              style:
                  TextStyle(fontSize: 17, color: white, fontFamily: 'Poppins')),
          color: darkRed,
          shape: StadiumBorder(
            side: BorderSide(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TrakingScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}

//Button for Cancel Orders
class CancelOrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          FlatButton(
            color: darkRed,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CancelOrderScreen(),
                ),
              );
            },
            child: Text(
              'CANCEL ORDER',
              style:
                  TextStyle(fontSize: 17, fontFamily: 'Poppins', color: white),
            ),
          ),
        ],
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  final String btntext;
  SubmitButton({this.btntext});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Center(
        child: RaisedButton(
          elevation: 0.0,
          color: darkRed,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          child: Text(
            'SUBMIT',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
