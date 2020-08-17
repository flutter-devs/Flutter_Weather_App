import 'package:flutter/material.dart';

class CustomCardB extends StatelessWidget {
  final String title, image;
  const CustomCardB({
    Key key,
    this.title,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26.withOpacity(0.15),
            offset: Offset(0, 3),
            blurRadius: 10,
            spreadRadius: 3,
          ),
        ],
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
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            padding: EdgeInsets.all(15.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                CircleAvatar(
                  radius: 23,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.grey,
                  child: Icon(
                    Icons.favorite_border,
                    color: Color(0xff53d2c1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
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
                        title,
                        style: TextStyle(
                          fontSize: 17.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '₹180',
                        style: TextStyle(
                          fontSize: 17.5,
                          fontWeight: FontWeight.w600,
                        ),
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
                            Text('Wembley, London',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 13)),
                            Icon(Icons.location_on,
                                color: Color(0xff53d2c1), size: 15),
                            Text('2 km to city ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13))
                          ],
                        ),
                        Text('/per night',
                            style: TextStyle(fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.star, size: 16, color: Color(0xff53d2c1)),
                      Icon(Icons.star, size: 16, color: Color(0xff53d2c1)),
                      Icon(Icons.star, size: 16, color: Color(0xff53d2c1)),
                      Icon(Icons.star, size: 16, color: Color(0xff53d2c1)),
                      Icon(Icons.star_border,
                          size: 16, color: Color(0xff53d2c1)),
                      Text(
                        "  80 Reviews",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
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
