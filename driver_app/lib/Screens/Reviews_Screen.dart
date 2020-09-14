import 'package:driver_app/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: darkRed,
        title: Text(
          "Reviews",
          style: TextStyle(color: white),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
            color: white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          TextField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey[400],
                                  width: 2,
                                ),
                              ),
                              fillColor: Colors.grey[400],
                              hintText: "Describe Your Experience",
                              // hintStyle: Theme.of(context).textTheme.bodyText,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text("Give Your Rating : "),
                              SizedBox(width: 10),
                              RatingBar(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1),
                                itemSize: 28,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: darkRed,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                          //Center(child: Text('Rate your customer!')),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "SUBMIT",
                        style: Theme.of(context).textTheme.button.copyWith(
                              fontSize: 18,
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.black
                                  : Colors.white,
                            ),
                      ),
                      shape: StadiumBorder(),
                      color: darkRed,
                      splashColor: Colors.lightGreenAccent[400],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
