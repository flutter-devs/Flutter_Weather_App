import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/screen/introscreen.dart';
import 'package:roome/src/screen/loginscreen.dart';
import 'package:roome/src/widgets/button.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/spbg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        // alignment: Alignment.center,
        child: SafeArea(
          minimum:
              EdgeInsets.only(left: 40.0, bottom: 40.0, right: 40.0, top: 90.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // SizedBox(height: 1),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff53d2c1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ),
                    Text(
                      'Roome',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.black,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        height: 2,
                      ),
                    ),
                    Text(
                      'Best hotel deals for your holiday',
                      style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Button(
                      height: 45,
                      text: 'Get Started',
                      textcolor: Colors.white,
                      buttonColor: Color(0xff53d2c1),
                      boxshadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          spreadRadius: -3,
                        ),
                      ],
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IntroScreen(),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Center(
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        ),
                        child: Text(
                          'Already have an account? Log in',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
