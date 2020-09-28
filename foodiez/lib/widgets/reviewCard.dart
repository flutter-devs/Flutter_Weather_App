import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';
import 'package:get/get.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key key,
    this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Container(
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
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            title: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '45 Reviews, 210 Followers',
              style: TextStyle(fontSize: 12),
            ),
            trailing: Container(
              height: 22,
              width: 60,
              child: FlatButton(
                padding: EdgeInsets.zero,
                child: Text(
                  'Follow',
                  style: TextStyle(fontSize: 10),
                ),
                textColor: Colors.teal[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Colors.teal[300],
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.star, size: 16, color: Colors.amber[200]),
                      Icon(Icons.star, size: 16, color: Colors.amber[200]),
                      Icon(Icons.star, size: 16, color: Colors.amber[200]),
                      Icon(Icons.star, size: 16, color: Colors.amber[200]),
                      Icon(Icons.star_border,
                          size: 16, color: Colors.amber[200]),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          '4.0',
                          style:
                              TextStyle(color: Colors.amber[200], fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.thumb_up,
                          size: 16,
                          color: Colors.amber[200],
                        ),
                      ),
                      Icon(Icons.chat_bubble_outline)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'I enjoyed the food of the restaurant. The dishes are attractive'
              'and very beautiful. Good food, luxurious space and enthusiastic service.'
              'I will be back in the...',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            height: size.width * 0.21,
            // width: size.width * 0.21,
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: size.width * 0.21,
                  width: size.width * 0.21,
                  margin: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(mostpop[index].image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
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
