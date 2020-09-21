import 'package:flutter/material.dart';
import 'package:roome/src/widgets/button.dart';

class Rooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeData().scaffoldBackgroundColor,
        iconTheme: ThemeData().iconTheme,
        elevation: 0,
        title: Text(
          "Grand Royal Hotel",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          roomcard(
            size: size,
            image: 'assets/images/int.jpg',
            text: 'Deluxe Room\n₹880',
          ),
          roomcard(
            size: size,
            image: 'assets/images/int.jpg',
            text: 'Premium Room\n₹1180',
          ),
          roomcard(
            size: size,
            image: 'assets/images/int.jpg',
            text: 'Deluxe Room\n₹880',
          ),
        ],
      ),
    );
  }
}

class roomcard extends StatelessWidget {
  const roomcard({
    Key key,
    @required this.size,
    this.text,
    this.image,
  }) : super(key: key);

  final Size size;
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(20),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black26.withOpacity(0.15),
          //     offset: Offset(0, 3),
          //     blurRadius: 10,
          //     spreadRadius: 3,
          //   ),
          // ],
          ),
      child: Column(
        children: <Widget>[
          Container(
            height: size.width * 0.5,
            width: size.width,
            // margin: EdgeInsets.only(left: 20.0, top: 15.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(20),
              //   topRight: Radius.circular(20),
              // ),
            ),
            padding: EdgeInsets.all(15.0),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.only(
              //   bottomLeft: Radius.circular(20),
              //   bottomRight: Radius.circular(20),
              // ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: 17.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Button(
                        text: 'Book now',
                        textcolor: Colors.white,
                        buttonColor: Color(0xff53d2c1),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('Sleeps 3 people',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 13)),
                          ],
                        ),
                        Text('Room details',
                            style: TextStyle(color: Colors.grey, fontSize: 13))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
