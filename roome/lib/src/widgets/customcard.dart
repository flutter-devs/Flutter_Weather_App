import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title, image;
  const CustomCard({
    Key key,
    this.title,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.3,
      // width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26.withOpacity(0.15),
            offset: Offset(0, 3),
            blurRadius: 10,
            spreadRadius: 3,
          ),
        ],
      ),
      // margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: <Widget>[
          Container(
            // height: 100,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
          ),
          Container(
            width: size.width - 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'Paris',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 15,
                              color: Color(0xff53d2c1),
                            ),
                            Text('2 km to city',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                        Text('₹180',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.star,
                                size: 16, color: Color(0xff53d2c1)),
                            Icon(Icons.star,
                                size: 16, color: Color(0xff53d2c1)),
                            Icon(Icons.star,
                                size: 16, color: Color(0xff53d2c1)),
                            Icon(Icons.star,
                                size: 16, color: Color(0xff53d2c1)),
                            Icon(Icons.star_border,
                                size: 16, color: Color(0xff53d2c1)),
                          ],
                        ),
                        Text('/per night', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
