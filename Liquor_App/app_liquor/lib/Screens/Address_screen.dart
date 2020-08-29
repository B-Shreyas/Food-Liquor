import 'package:app_liquor/Screens/Payment_Screen.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.red.shade700,
          title: Text(
            'Our Address',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text('Address',
                                style: TextStyle(
                                    color: Colors.red.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19)),
                          ),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide(color: Colors.red.shade400),
                            ),
                            onPressed: () {
                              print("User wants to add address");
                            },
                            color: Colors.red.shade700,
                            child: Text(
                              'Add Address',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 2.5,
                margin: EdgeInsets.all(10),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text('Home Address',
                                style: TextStyle(
                                    color: Colors.red.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19)),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.mode_edit,
                                color: Colors.red.shade700,
                              ),
                              onPressed: () {
                                print('User wants to edit');
                              }),
                          IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red.shade700,
                              ),
                              onPressed: () {
                                print('User wants to delete');
                              }),
                        ],
                      ),
                      Text(
                        'Kapileshwar Mahadev Rd, Vardhaman Nagar, Kalol, Gujrat 382721, India',
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 2.5,
                margin: EdgeInsets.all(10),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text('Home Address',
                                style: TextStyle(
                                    color: Colors.red.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19)),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.mode_edit,
                                color: Colors.red.shade700,
                              ),
                              onPressed: () {
                                print('User wants to edit');
                              }),
                          IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red.shade700,
                              ),
                              onPressed: () {
                                print('User wants to delete');
                              }),
                        ],
                      ),
                      Text(
                        'Kapileshwar Mahadev Rd, Vardhaman Nagar, Kalol, Gujrat 382721, India',
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(color: Colors.red.shade400),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => PaymentScreen(),
                                ),
                              );
                            },
                            color: Colors.red.shade700,
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
