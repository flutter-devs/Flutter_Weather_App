import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/screen/forgotpass.dart';
import 'package:roome/src/screen/home.dart';
// import 'package:roome/src/screen/homescreen.dart';
import 'package:roome/src/screen/signupscreen.dart';
import 'package:roome/src/widgets/button.dart';
import 'package:roome/src/widgets/inputbox.dart';
import 'package:roome/src/widgets/socialbutton.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff6f6f6),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Color(0xfff6f6f6),
      body: SingleChildScrollView(child: LoginBody()),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(right: 40, left: 40, top: 10.0, bottom: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Log in',
            style: GoogleFonts.robotoSlab(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SocialButton(
                color: Color(0xff3b5898),
                text: 'Facebook',
                icon: FaIcon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.white,
                ),
                textcolor: Colors.white,
              ),
              SocialButton(
                color: Color(0xff01abec),
                text: 'Twitter  ',
                icon: FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                ),
                textcolor: Colors.white,
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Center(
            child: Text(
              'or log in with email',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 30.0),
          Inputbox(text: 'Your Email'),
          Inputbox(
              obscuretext: true,
              text: 'Password',
              icon: Icon(Icons.remove_red_eye, color: Color(0xff53d2c1))),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Forgotpass(),
                ),
              ),
              child: Text(
                'Forgot your password?',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Button(
                height: 45,
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
                    builder: (context) => Home(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 250.0),
          Center(
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignupScreen(),
                ),
              ),
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        color: Color(0xff53d2c1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
