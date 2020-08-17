import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/widgets/button.dart';
import 'package:roome/src/widgets/inputbox.dart';

class Forgotpass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff6f6f6),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Color(0xfff6f6f6),
      body: SingleChildScrollView(child: Passbody()),
    );
  }
}

class Passbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(right: 40, left: 40, top: 10.0, bottom: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Forgot Password',
            style: GoogleFonts.robotoSlab(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'Enter your email to receive an email to\nreset your password',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 80),
          Center(
            child: Inputbox(
              text: 'Your Email',
            ),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Button(
                height: 45,
                text: 'Send',
                textcolor: Colors.white,
                buttonColor: Color(0xff53d2c1),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
