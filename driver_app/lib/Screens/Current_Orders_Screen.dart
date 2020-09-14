import 'package:driver_app/Components/Buttons_widget.dart';
import 'package:driver_app/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrentOrdersScreen extends StatefulWidget {
  @override
  _CurrentOrdersScreenState createState() => _CurrentOrdersScreenState();
}

class _CurrentOrdersScreenState extends State<CurrentOrdersScreen> {
  List<Widget> containers = [
    Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'OrderId: 98',
              style: TextStyle(fontFamily: 'Dosis-Bold', fontSize: 16),
            ),
          ),
          Divider(
            height: 1.0,
            thickness: 2.0,
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Deliver to Den',
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Dosis',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: darkRed,
                      size: 17,
                    ),
                    SizedBox(
                      height: 30,
                      width: 15,
                    ),
                    Text(
                      'Home address Kapileshwar Mahadev Rd, \nVardhaman Nagar,  Kajol, \nGujrat 382721, India 382721',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey,
                          fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.calendar_today,
                      color: darkRed,
                      size: 17,
                    ),
                    SizedBox(
                      height: 30,
                      width: 15,
                    ),
                    Text(
                      'Date: 27 Jun 2020',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    CircleAvatar(
                      radius: 45.0,
                      backgroundImage:
                          AssetImage('assets/images/profile_user.jpg'),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Cash to Collect',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Dosis',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      OpenMapButton(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          color: darkRed,
                          onPressed: () {},
                          child: Text(
                            'DELIVERED ORDER',
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Poppins',
                                color: white),
                          ),
                        ),
                        CancelOrderButton(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'OrderId: 98',
              style: TextStyle(fontFamily: 'Dosis-Bold', fontSize: 15),
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: lightGrey,
        appBar: AppBar(
          backgroundColor: darkRed,
          title: Text('Current Orders'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Tab(
                  child: Text(
                    'Customer Details',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                ),
              ),
              Tab(
                child: Tab(
                  child: Text(
                    'Store Details',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                ),
              ),
            ],
          ),
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
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}
