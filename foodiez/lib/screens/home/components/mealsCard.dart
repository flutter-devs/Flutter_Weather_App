import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';
import 'package:get/get.dart';

class MealsCard extends StatelessWidget {
  final ImageData imageData;
  const MealsCard({
    Key key,
    this.imageData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Container(
      // height: 195,
      width: size.width * 0.35,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageData.image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisSize: MainsAxisSize.min,
        children: [
          Divider(
            color: Colors.amber,
            thickness: 2,
            endIndent: size.width * 0.2,
            indent: 20,
            height: 0.5,
          ),
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            title: Text(
              'Greek Style',
              style: TextStyle(color: Colors.white),
            ),
            subtitle:
                Text('34 Places', style: TextStyle(color: Colors.white54)),
          ),
        ],
      ),
    );
  }
}
