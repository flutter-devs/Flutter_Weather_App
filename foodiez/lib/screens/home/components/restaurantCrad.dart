import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';
import 'package:get/get.dart';

class PopularRestCard extends StatelessWidget {
  final ImageData imageData;
  final double rightvalpad;
  const PopularRestCard({
    Key key,
    this.imageData,
    this.rightvalpad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Container(
      // height: 80,
      width: size.width * 0.28,
      margin: EdgeInsets.only(right: rightvalpad),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageData.image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
