import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';
import 'package:foodiez/screens/detail/detail.dart';
import 'package:foodiez/widgets/searchBox.dart';
import 'package:get/get.dart';

class NearbyScreen extends StatelessWidget {
  const NearbyScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String rat = '3.8';
    Size size = Get.mediaQuery.size;
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Searchbox(size: size),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(DetailScreen(
                      image: mostpop[index].image,
                      title: nearby[index].food,
                    ));
                  },
                  child: NearbyCard(
                    size: size,
                    rat: rat,
                    imageData: mostpop[index],
                    textData: nearby[index],
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

class NearbyCard extends StatelessWidget {
  const NearbyCard({
    Key key,
    @required this.size,
    this.rat,
    this.textData,
    this.imageData,
    this.rats,
  }) : super(key: key);

  final Size size;
  final String rat;
  final String rats;
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
                  color: textData.ratin != rat ? Colors.amber : Colors.red[300],
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
