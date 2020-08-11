import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/screen/signupscreen.dart';

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
              RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                color: Color(0xff3b5898),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Row(
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text('Facebook', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                color: Color(0xff01abec),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Row(
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text('Twitter  ', style: TextStyle(color: Colors.white)),
                  ],
                ),
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200],
                    blurRadius: 10.0,
                    spreadRadius: 10.0),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Your Email',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200],
                    blurRadius: 10.0,
                    spreadRadius: 10.0),
              ],
            ),
            alignment: Alignment.centerLeft,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none, alignLabelWithHint: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                // labelText: 'hjh',
                // prefixText: 'jghj',
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xff53d2c1),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot your password?',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                ),
                color: Color(0xff53d2c1),
                elevation: 8,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 190.0),
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
