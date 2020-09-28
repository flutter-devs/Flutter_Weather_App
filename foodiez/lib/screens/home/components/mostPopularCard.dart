import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';
import 'package:get/get.dart';

class MostPopularCard extends StatelessWidget {
  final ImageData imageData;
  final String text;
  const MostPopularCard({
    Key key,
    this.imageData,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Container(
      margin: EdgeInsets.only(right: 10),
      alignment: Alignment.center,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.width * 0.3,
            width: size.width * 0.35,
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
            // height,
            width: size.width * 0.35,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  color: Colors.grey,
                  blurRadius: 5,
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
                text,
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
