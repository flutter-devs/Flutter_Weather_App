import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';
import 'package:get/get.dart';

class PopularRest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String rat = '4.3';
    Size size = Get.mediaQuery.size;
    return Material(
      child: Column(
        children: [
          Container(
            height: size.width * 0.8,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/food4.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.fromLTRB(20, 30, 10, 20),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    )),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '      Asian\nRestaurants',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: size.width,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: -2,
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '20 Restaurants',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Filter',
                    style: TextStyle(
                      color: Colors.teal[300],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
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
                    // leading: Container(
                    //   height: 80,
                    //   width: 75,
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(8),
                    //     child: Image.asset(
                    //       restron[index].image,
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                    title: Text(
                      rests[index].food,
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
                              color: rests[index].ratin == rat
                                  ? Colors.amber
                                  : Colors.red[300],
                              borderRadius: BorderRadius.circular(4)),
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(rests[index].ratin),
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
              },
            ),
          )
        ],
      ),
    );
  }
}
