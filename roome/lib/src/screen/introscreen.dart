import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/screen/loginscreen.dart';
import 'package:roome/src/screen/signupscreen.dart';
import 'package:roome/src/widgets/button.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Introbody(),
    );
  }
}

class Introbody extends StatelessWidget {
  const Introbody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/images/clip2.png',
            height: 340,
          ),
          Text(
            'Plan your Trips',
            style: GoogleFonts.robotoSlab(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 115,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Button(
                  height: 45,
                  text: 'Log in',
                  textcolor: Colors.white,
                  buttonColor: Color(0xff53d2c1),
                  boxshadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 10.0,
                      spreadRadius: 1.5,
                      offset: Offset(0, 5),
                    ),
                  ],
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  ),
                ),
                // SizedBox(height: 20),
                Button(
                  height: 45,
                  text: 'Create Account',
                  textcolor: Colors.black,
                  buttonColor: Colors.white,
                  boxshadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      spreadRadius: -4,
                      offset: Offset(0, 2),
                    ),
                  ],
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
