import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';
import 'package:foodiez/screens/home/components/restaurantCrad.dart';

class Gridscreen extends StatelessWidget {
  final String title;
  final Widget child;

  const Gridscreen({Key key, this.title, this.child}) : super(key: key);
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
              return PopularRestCard(
                imageData: restron[index],
                rightvalpad: 0,
              );
            },
          ),
        ),
      ],
    ));
  }
}
