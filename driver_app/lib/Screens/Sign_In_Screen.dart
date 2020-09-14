import 'package:driver_app/Constants/Colors.dart';
import 'package:driver_app/Screens/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isObsecured = false;
  @override
  Widget build(BuildContext context) {
    RichText _richText(String title) {
      return RichText(
        text: TextSpan(
          text: title,
          style: Theme.of(context).textTheme.subtitle,
          children: <TextSpan>[
            TextSpan(
              text: " *",
              style: TextStyle(
                color: darkRed,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    InputDecoration _inputDecoration({Widget suffixIcon}) {
      return InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: darkRed,
              width: 2,
            ),
          ),
          suffixIcon: suffixIcon);
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            expandedHeight: 200,
            pinned: true,
            backgroundColor: darkRed,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Welcome \n Sign In",
                style: TextStyle(color: Colors.white),
              ),
              titlePadding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 10,
              ),
              background: Container(
                // margin: const EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  color: darkRed,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(height: 20),
                        _richText("Email"),
                        TextFormField(
                          onFieldSubmitted: (_) {},
                          decoration: _inputDecoration(),
                        ),
                        SizedBox(height: 20),
                        _richText("Password"),
                        TextFormField(
                          obscureText: isObsecured,
                          onFieldSubmitted: (_) {},
                          decoration: _inputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                isObsecured
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  isObsecured = !isObsecured;
                                });
                              },
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                style: Theme.of(context)
                                    .textTheme
                                    .body1
                                    .copyWith(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            },
                            child: Text("SIGN IN",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            shape: StadiumBorder(),
                            color: darkRed,
                            splashColor: Colors.lightGreenAccent[400],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
