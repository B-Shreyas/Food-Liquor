import 'package:driver_app/Components/Buttons_widget.dart';
import 'package:driver_app/Custom_Drawer/Drawer_Sidebar.dart';
import 'package:driver_app/Constants/Colors.dart';
import 'package:driver_app/Screens/My_Profile_Screen.dart';
import 'package:driver_app/Screens/Current_Orders_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Notification_Screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> containers = [
    Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile_user.jpg'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(color: darkRed, width: 2),
                      borderRadius: BorderRadius.circular(5)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Den',
                      style: TextStyle(
                          fontFamily: 'Dosis',
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'OrderId: 98',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Dosis',
                              color: lightGrey),
                        ),
                        SizedBox(
                          width: 110,
                        ),

                        ViewButton(), // Buttons in 'Components' folder and  'Button_Widget' file
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile_user2.jpg'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(color: darkRed, width: 2),
                      borderRadius: BorderRadius.circular(5)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Carmen',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Dosis',
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'OrderId: 99',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Dosis',
                              color: lightGrey),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        ViewButton(), // Buttons in 'Components' folder and  'Button_Widget' file
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.fiber_manual_record,
                    color: lightGreen,
                  ),
                  onPressed: null),
              Center(
                  child: Text(
                'Online',
                style: TextStyle(
                    color: white, fontFamily: 'Dosis-Light', fontSize: 18),
              )),
            ],
            centerTitle: true,
            title: Text('Home'),
            backgroundColor: darkRed,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Current Orders',
                    style: TextStyle(fontSize: 17, fontFamily: 'Poppins'),
                  ),
                ),
                Tab(
                  child: Text(
                    'Past Orders',
                    style: TextStyle(fontSize: 17, fontFamily: 'Poppins'),
                  ),
                ),
              ],
            ),
          ),

          // Sidebar Drawer in HomeScreen.

          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(color: darkRed),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile_user.jpg'),
                        maxRadius: 40,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'User Name',
                        style: TextStyle(color: white, fontSize: 15),
                      ),
                      Text(
                        'abc@example.com',
                        style: TextStyle(color: white, fontSize: 15),
                      )
                    ],
                  ),
                ),
                CustomListTile(Icons.home, 'Home', () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }),
                SizedBox(
                  height: 15,
                ),
                CustomListTile(Icons.account_circle, 'Account', () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MyProfile(),
                    ),
                  );
                }),
                SizedBox(
                  height: 15,
                ),
                CustomListTile(Icons.receipt, 'My Orders', () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CurrentOrdersScreen(),
                    ),
                  );
                }),
                SizedBox(
                  height: 15,
                ),
                CustomListTile(Icons.notifications_active, 'Notifications', () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    ),
                  );
                }),
                SizedBox(
                  height: 15,
                ),
                CustomListTile(Icons.brightness_medium, 'Night Mode', () {}),
              ],
            ),
          ),
          body: TabBarView(
            children: containers,
          ),
        ),
      ),
    );
  }
}
