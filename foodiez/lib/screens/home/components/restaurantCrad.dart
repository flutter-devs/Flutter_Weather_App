import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';

class PopularRestCard extends StatelessWidget {
  final ImageData imageData;
  const PopularRestCard({
    Key key,
    this.imageData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 80,
      width: 110,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageData.image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
