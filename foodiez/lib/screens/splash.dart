import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:foodiez/models/datamodel.dart';
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
          SizedBox(
            height: size.width,
            width: size.width,
            child: Swiper(
              itemCount: 4,
              pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                // margin: EdgeInsets.only(),
                builder: DotSwiperPaginationBuilder(
                  color: Colors.grey[200],
                  size: 6.0,
                  activeSize: 9.0,
                  space: 3.0,
                  activeColor: Colors.white,
                ),
              ),
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Image.asset(
                        splash[index].image,
                        height: size.width - 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          splashTxt[index].food,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          splashTxt[index].ratin,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: .8),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
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
