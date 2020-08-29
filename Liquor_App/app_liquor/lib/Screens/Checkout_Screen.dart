import 'package:app_liquor/Screens/Address_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.red.shade700,
          title: Text(
            'Checkout',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 127,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 103,
                      height: 127,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('assets/images/biryani2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Chicken Biryani',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          'By: Grover',
                          style: TextStyle(fontSize: 16.5, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          'Rs. 360.00',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.5,
                              color: Colors.red.shade700),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.remove_circle,
                                  color: Colors.red.shade700,
                                ),
                                onPressed: () {}),
                            Text(
                              '3',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red.shade700),
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.add_circle,
                                  color: Colors.red.shade700,
                                ),
                                onPressed: () {}),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 210,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                width: double.infinity,
                color: Colors.white,
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Price Details',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19)),
                            ],
                          ),
                          Divider(
                            color: Colors.grey.shade200,
                            thickness: 3,
                          ),
                          Row(
                            children: <Widget>[
                              Text('Sub Total',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                              Spacer(
                                flex: 1,
                              ),
                              Text(' - ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                              Spacer(
                                flex: 1,
                              ),
                              Text('Rs. 360.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: <Widget>[
                              Text('DisCount',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                              SizedBox(
                                width: 108,
                              ),
                              Text(' - ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                              Spacer(
                                flex: 1,
                              ),
                              Text('- Rs. 150.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: <Widget>[
                              Text('Delivery Charge',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                              SizedBox(
                                width: 53,
                              ),
                              Text(' - ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                              Spacer(
                                flex: 1,
                              ),
                              Text('+ Rs. 100.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: <Widget>[
                              Text('Sub Total',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                              SizedBox(
                                width: 108,
                              ),
                              Text(' - ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                              Spacer(
                                flex: 1,
                              ),
                              Text('Rs. 360.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Divider(
                            color: Colors.grey.shade200,
                            thickness: 3,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Text('Total',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                              SizedBox(width: 146),
                              Text(' - ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.grey)),
                              Spacer(
                                flex: 1,
                              ),
                              Text('Rs. 310.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.shade200,
                thickness: 5,
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                width: double.infinity,
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
                            child: Text('GET30',
                                style: TextStyle(
                                    color: Colors.red.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17)),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.close,
                              ),
                              onPressed: () {
                                print("Coupon Pressed");
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                width: double.infinity,
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
                            child: Text('Rs. 310.00',
                                style: TextStyle(
                                    color: Colors.red.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17)),
                          ),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(color: Colors.red.shade400),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => AddressScreen(),
                                ),
                              );
                            },
                            color: Colors.red.shade700,
                            child: Text(
                              'Checkout',
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
            ],
          ),
        ),
      ),
    );
  }
}
