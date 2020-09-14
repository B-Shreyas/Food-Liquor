import 'package:driver_app/Constants/Colors.dart';
import 'package:driver_app/Screens/Home_Screen.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: darkRed,
        title: Text(
          'My Profile',
          style: TextStyle(color: white),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    elevation: 8,
                    color: darkRed,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            AssetImage('assets/images/profile_user.jpg'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  color: white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.person,
                            color: darkRed,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'First Name',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      IconButton(
                          icon: Icon(Icons.edit, color: darkRed, size: 30),
                          onPressed: () {}),
                      Divider(
                        height: 20,
                        thickness: 8,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  color: white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.person,
                            color: darkRed,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Last Name',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      IconButton(
                          icon: Icon(Icons.edit, color: darkRed, size: 30),
                          onPressed: () {}),
                      Divider(
                        height: 20,
                        thickness: 8,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  color: white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.mail,
                            color: darkRed,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'lara@mailinator.com',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  color: white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.phone,
                            color: darkRed,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '123456789',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      IconButton(
                          icon: Icon(Icons.edit, color: darkRed, size: 30),
                          onPressed: () {}),
                      Divider(
                        height: 20,
                        thickness: 8,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80),
                SizedBox(
                  height: 45,
                  width: 300,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(
                        color: white,
                        fontSize: 18,
                      ),
                    ),
                    shape: StadiumBorder(),
                    color: darkRed,
                    splashColor: Colors.lightGreenAccent[400],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
