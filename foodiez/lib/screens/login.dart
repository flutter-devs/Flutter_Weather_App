import 'package:flutter/material.dart';
import 'package:foodiez/screens/home.dart';
import 'package:foodiez/screens/signup.dart';
import 'package:foodiez/widgets/button.dart';
import 'package:foodiez/widgets/inputbox.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Loginbody(),
    );
  }
}

class Loginbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      margin: EdgeInsets.only(top: 100, bottom: 50),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'Log in',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            child: Wrap(
              children: [
                Inputbox(hintText: 'Email'),
                Inputbox(hintText: 'Password'),
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('Forgot Password?'),
                    textColor: Colors.teal[300],
                  ),
                ),
                Button(
                  height: 50,
                  width: size.width,
                  text: 'Login',
                  color: Color(0xffffcc2a),
                  onPressed: () {
                    Get.focusScope.unfocus();
                    Get.to(HomeScreen());
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              onPressed: () {
                Get.focusScope.unfocus();
                Get.to(SignupScreen());
              },
              child: Text('Sign up an account'),
              textColor: Colors.teal[300],
            ),
          )
        ],
      ),
    );
  }
}
