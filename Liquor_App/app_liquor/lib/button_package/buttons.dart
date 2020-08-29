import 'package:app_liquor/Screens/Product_details.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btntext;
  Button({this.btntext});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.0,
      child: Center(
        child: RaisedButton(
          elevation: 0.0,
          color: Colors.yellow,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Product_Details(),
              ),
            );
          },
          child: Text(
            'Yes I Agree',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
