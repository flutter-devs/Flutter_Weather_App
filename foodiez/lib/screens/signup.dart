import 'package:flutter/material.dart';
import 'package:foodiez/screens/home/home.dart';
import 'package:foodiez/screens/login.dart';
import 'package:foodiez/widgets/button.dart';
import 'package:foodiez/widgets/inputbox.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Signupbody(),
    );
  }
}

class Signupbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      margin: EdgeInsets.only(top: 50, bottom: 40),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.vertical,
              children: [
                Text(
                  'Welcome to\n   Foodiez',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Create your account',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Inputbox(hintText: 'Username'),
                Inputbox(hintText: 'Email'),
                Inputbox(hintText: 'Password'),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 30),
                  child: Button(
                    height: 50,
                    width: size.width,
                    text: 'Sign up',
                    color: Color(0xffffcc2a),
                    onPressed: () {
                      Get.focusScope.unfocus();
                      Get.to(HomeScreen());
                    },
                  ),
                ),
                Text(
                  'Terms & Conditions',
                  style: TextStyle(color: Colors.teal[300]),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              onPressed: () {
                Get.focusScope.unfocus();
                Get.to(LoginScreen());
              },
              child: Text('Login to your account'),
              textColor: Colors.teal[300],
            ),
          )
        ],
      ),
    );
  }
}
