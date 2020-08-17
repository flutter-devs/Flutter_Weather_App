import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/screen/loginscreen.dart';
import 'package:roome/src/widgets/button.dart';
import 'package:roome/src/widgets/inputbox.dart';
import 'package:roome/src/widgets/socialbutton.dart';

class SignupScreen extends StatelessWidget {
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
            'Sign up',
            style: GoogleFonts.robotoSlab(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 25.0),
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
          SizedBox(height: 25.0),
          Center(
            child: Text(
              'or sign up with email',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 25.0),
          Inputbox(text: 'First Name'),
          Inputbox(text: 'Last Name'),
          Inputbox(text: 'You Email'),
          Inputbox(
              obscuretext: true,
              text: 'Password',
              icon: Icon(Icons.remove_red_eye, color: Color(0xff53d2c1))),
          SizedBox(height: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Button(
                height: 45,
                text: 'Sign up',
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
                onPressed: () {},
              ),
            ],
          ),
          Center(
            heightFactor: 4,
            child: Text(
              'By signing up, you agree with of our Terms of\n\t\t\t\            Services and Privacy Policy',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          // SizedBox(height: 100.0),
          Center(
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              ),
              child: RichText(
                text: TextSpan(
                  text: "Already have an account?  ",
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Log in',
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
