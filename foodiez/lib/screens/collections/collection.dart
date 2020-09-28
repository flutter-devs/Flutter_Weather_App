import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';
import 'package:get/get.dart';

class Collection extends StatelessWidget {
  const Collection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Collections',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.yellow[700],
        ),
      ),
      body: Collectionbody(),
    );
  }
}

class Collectionbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Container(
            height: size.width * 0.6,
            width: size.width,
            // margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/food6.jpg'),
                  fit: BoxFit.cover),
              // borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              // mainAxisSize: MainsAxisSize.min,
              children: [
                Divider(
                  color: Colors.amber,
                  thickness: 2,
                  endIndent: size.width * 0.85,
                  indent: 20,
                  height: 0.5,
                ),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  title: Text(
                    'Health',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text('14 Places',
                      style: TextStyle(color: Colors.white54)),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 0,
                  childAspectRatio: 1),
              padding: EdgeInsets.only(top: 15),
              itemCount: mealsTxt.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  // height: 400,
                  // width: size.width * 0.35,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(meals[index].image),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // mainAxisSize: MainsAxisSize.min,
                    children: [
                      Divider(
                        color: Colors.amber,
                        thickness: 2,
                        endIndent: size.width * 0.3,
                        indent: 20,
                        height: 0.5,
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        title: Text(
                          mealsTxt[index].food,
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text('34 Places',
                            style: TextStyle(color: Colors.white54)),
                      ),
                    ],
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
