import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';
import 'package:foodiez/screens/home/components/restaurantCrad.dart';
import 'package:get/get.dart';

class Gridscreenmeal extends StatelessWidget {
  final String title;
  final Widget child;

  const Gridscreenmeal({Key key, this.title, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.yellow[700]),
      ),
      body: GridBody(),
    );
  }
}

class GridBody extends StatelessWidget {
  const GridBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Container(
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                // childAspectRatio: 1,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  // height: 195,
                  // width: size.width * 0.35,
                  // margin: EdgeInsets.only(right: 10),
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
