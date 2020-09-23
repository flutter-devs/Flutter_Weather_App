import 'package:flutter/material.dart';
import 'package:foodiez/models/image.dart';

class CustmCard1 extends StatelessWidget {
  final ImageData imageData;
  const CustmCard1({
    Key key,
    this.imageData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            height: 110,
            width: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageData.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
          ),
          Container(
            height: 60,
            width: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 3),
                  color: Colors.grey,
                  blurRadius: 10,
                  spreadRadius: -2,
                ),
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 8),
              title: Text(
                'KFC Broadway',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '122 Queen Street\nStater pastry',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
