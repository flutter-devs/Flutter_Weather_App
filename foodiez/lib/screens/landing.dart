import 'package:flutter/material.dart';
import 'package:foodiez/screens/home/home.dart';
import 'package:foodiez/widgets/button.dart';
import 'package:get/get.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Scaffold(
      body: Container(
        width: size.width,
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi, nice to meet you!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Set your location to start exploring\n          restaurants around you',
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: 40),
            Button(
              text: 'User Current Location',
              width: size.width,
              height: 50,
              color: Color(0xffffcc2a),
              onPressed: () {
                Get.off(HomeScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
