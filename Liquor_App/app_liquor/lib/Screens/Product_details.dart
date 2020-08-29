import 'package:app_liquor/Screens/Select_quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Product_Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Product Details',
              style: GoogleFonts.calistoga(textStyle: TextStyle())),
          centerTitle: true,
          backgroundColor: Colors.red.shade700,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                // margin: EdgeInsets.all(5.0),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/biryani2.jpg"),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                width: double.infinity,
                height: 300,
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Chicken Biryani',
                          style: GoogleFonts.calistoga(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ))),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        'Description',
                        style: TextStyle(
                            color: Colors.red.shade700,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "Chicken Biryani is a savory chicken and rice dish that includes layers of chicken, rice, and aromatics that are steamed together. ... For my version, I've simplified the preparation a bit by marinating the chicken in a spicy mixture of garam masala, garlic, ginger, chili peppers, cilantro, and garlic.",
                        style: GoogleFonts.calistoga(
                            textStyle:
                                TextStyle(color: Colors.grey, fontSize: 14.0)),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "Main ingredients",
                        style: TextStyle(
                            color: Colors.red.shade700,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text("Rice, Indian spices, Meat, Dahi",
                          style: GoogleFonts.calistoga(
                              textStyle: TextStyle(
                                  fontSize: 16.0, color: Colors.grey))),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Additional Information",
                        style: TextStyle(
                            color: Colors.red.shade700,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                margin: EdgeInsets.all(5.0),
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
                            child: Text('In Stock',
                                style: GoogleFonts.calistoga(
                                    textStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17))),
                          ),
                          Text('Yes',
                              style: GoogleFonts.calistoga(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                width: double.infinity,
                height: 48,
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text('Category',
                                style: GoogleFonts.calistoga(
                                    textStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17))),
                          ),
                          Center(
                              child: Text('Chicken, Mutton, Veg',
                                  style: GoogleFonts.calistoga(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                width: double.infinity,
                height: 60,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text('Ingredients \n generally used',
                                style: GoogleFonts.calistoga(
                                    textStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17))),
                          ),
                          Center(
                              child: Text('Nuts, Dried fruits',
                                  style: GoogleFonts.calistoga(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                width: double.infinity,
                height: 60,
                color: Colors.grey.shade200,
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
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.red.shade400),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SelectQuantity(),
                                ),
                              );
                            },
                            color: Colors.red.shade700,
                            child: Text(
                              'Add to Cart',
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
