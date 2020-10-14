import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';
import 'package:foodiez/screens/detail/detail.dart';
import 'package:get/get.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final TextData textData;
    String rat = '4.3';
    Size size = Get.mediaQuery.size;
    return Container(
      height: size.height,
      width: size.width,
      // color: Colors.grey[100],
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(DetailScreen(
                      image: restron[index].image,
                      title: foods[index].food,
                    ));
                  },
                  child: FavCard(
                    size: size,
                    rat: rat,
                    imageData: restron[index],
                    textData: foods[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FavCard extends StatelessWidget {
  const FavCard({
    Key key,
    @required this.size,
    @required this.rat,
    this.textData,
    this.imageData,
  }) : super(key: key);

  final Size size;
  final String rat;
  final TextData textData;
  final ImageData imageData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            color: Colors.grey,
            blurRadius: 4,
            spreadRadius: -2,
          ),
        ],
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        // contentPadding: EdsgeInsets.zero,
        isThreeLine: true,
        leading: Container(
          height: 80,
          width: 75,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageData.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          textData.food,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '11:30AM to 11PM\n20 Queen Street,NSW\nAsian,Thai',
          style: TextStyle(fontSize: 12),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: textData.ratin == rat ? Colors.amber : Colors.red[300],
                  borderRadius: BorderRadius.circular(4)),
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Text(textData.ratin),
            ),
            Icon(
              Icons.bookmark,
              size: 18,
              color: Colors.teal[400],
            ),
          ],
        ),
      ),
    );
  }
}
