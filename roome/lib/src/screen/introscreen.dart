import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/screen/loginscreen.dart';
import 'package:roome/src/screen/signupscreen.dart';
import 'package:roome/src/widgets/button.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Introbody(),
    );
  }
}

class Introbody extends StatelessWidget {
  final List img = [
    'assets/images/clip1.png',
    'assets/images/clip2.png',
  ];
  final List txt = ['Plan Your Trips', 'Find the Best Deal'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              child: Swiper(
            itemCount: 2,
            loop: false,
            viewportFraction: 1,
            scale: 0.5,
            // outer: true,
            scrollDirection: Axis.horizontal,
            pagination: SwiperPagination(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 480),
              builder: DotSwiperPaginationBuilder(
                color: Colors.grey,
                size: 10.0,
                activeSize: 10.0,
                space: 3.0,
                activeColor: Color(0xff53d2c1),
              ),
            ),
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      img[index],
                      fit: BoxFit.fill,
                      height: 440,
                    ),
                    Text(
                      txt[index],
                      style: GoogleFonts.robotoSlab(
                          fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Book one of our unique hotel to\n         escape the ordinary',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              );
            },
          )),
          Container(
            height: 115,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Button(
                  height: 45,
                  text: 'Log in',
                  textcolor: Colors.white,
                  buttonColor: Color(0xff53d2c1),
                  boxshadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 10.0,
                      spreadRadius: 1.5,
                      offset: Offset(0, 5),
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
                  height: 45,
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
    );
  }
}
