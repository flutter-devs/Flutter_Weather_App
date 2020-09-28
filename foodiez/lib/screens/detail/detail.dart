import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';
import 'package:foodiez/screens/reviews/reviews.dart';
import 'package:foodiez/widgets/reviewCard.dart';
import 'package:foodiez/widgets/seeAll.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key, this.title, this.image}) : super(key: key);
  final String title, image;
  @override
  Widget build(BuildContext context) {
    List name = ['Kelly West', 'Jason Mars'];
    Size size = Get.mediaQuery.size;
    return Material(
      child: Column(
        children: [
          Container(
            height: size.width * 0.65,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
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
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
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
              color: Colors.amber[400],
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: -2,
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Order Food Online',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 10),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.share),
                      Icon(Icons.star_border),
                      Icon(Icons.photo_camera),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    height: size.width * 0.25,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/map.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '20 Queen Street,Sydney\nAustralian, Cafe\n11:30AM to 11PM',
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[700]),
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.teal[300],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SeeAll(
                          text: 'Call',
                          buttonText: '(+61)23981 3187',
                          textStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ),
                        SeeAll(
                          text: 'Cuisies',
                          buttonText: 'Australian, Cafe',
                          textStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ),
                        SeeAll(
                          text: 'Average Cost',
                          buttonText: '\$20-\$50',
                          textStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SeeAll(
                    text: 'Photos',
                    buttonText: '+ Add',
                  ),
                  Container(
                    height: size.width * 0.3,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              height: size.width * 0.21,
                              width: size.width * 0.21,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(photos[index].image),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              margin: EdgeInsets.only(left: 10),
                            ),
                            Center(
                              child: Text(
                                phoText[index].food,
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            Center(
                              child: Text(
                                '(' + phoText[index].ratin + ')',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(ReviewScreen());
                    },
                    child: SeeAll(
                      text: 'Reviews',
                      buttonText: 'See all',
                    ),
                  ),
                  Container(
                    height: size.width * 0.65,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return ReviewCard(name: name[index]);
                      },
                    ),
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
