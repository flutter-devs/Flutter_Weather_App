import 'package:flutter/material.dart';
import 'package:roome/src/screen/loginscreen.dart';
import 'package:roome/src/screen/signupscreen.dart';
import 'package:roome/src/widgets/button.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 40.0, vertical: 60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 115,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Button(
                    text: 'Log in',
                    textcolor: Colors.white,
                    buttonColor: Color(0xff53d2c1),
                    boxshadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
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
      ),
    );
  }
}
