import 'package:flutter/material.dart';
import 'package:foodiez/screens/login.dart';
import 'package:foodiez/widgets/button.dart';
import 'package:get/get.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Splashbody(),
      backgroundColor: Color(0xffffcc2a),
    );
  }
}

class Splashbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: EdgeInsets.only(top: 50, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            radius: 100,
            backgroundColor: Colors.white,
          ),
          Text(
            'Quick Search',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Set your location to start exploring\n          restaurants around you',
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: .8),
          ),
          Button(
            height: 50,
            width: size.width,
            color: Colors.white,
            text: 'Login',
            onPressed: () {
              Get.to(LoginScreen());
            },
          ),
        ],
      ),
    );
  }
}
