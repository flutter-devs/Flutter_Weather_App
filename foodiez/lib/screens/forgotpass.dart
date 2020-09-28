import 'package:flutter/material.dart';
import 'package:foodiez/screens/login.dart';
import 'package:foodiez/widgets/button.dart';
import 'package:foodiez/widgets/inputbox.dart';
import 'package:get/get.dart';

class ForgotPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Forgotpassbody(),
    );
  }
}

class Forgotpassbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      margin: EdgeInsets.only(top: 50, bottom: 40),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.vertical,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  '       Please enter your email',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Inputbox(hintText: 'Email'),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 30),
                  child: Button(
                    height: 50,
                    width: size.width,
                    text: 'Submit',
                    color: Color(0xffffcc2a),
                    onPressed: () {
                      Get.focusScope.unfocus();
                      Get.to(LoginScreen());
                    },
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
