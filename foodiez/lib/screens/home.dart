import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:foodiez/models/image.dart';
import 'package:foodiez/widgets/custmCard1.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  Widget bottomAppbar(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Container(
      height: size.width * 0.153,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, -3),
            blurRadius: 10,
            spreadRadius: -5,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(Icons.home),
              color: selectedIndex == 0 ? Colors.amber : Colors.grey,
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              }),
          IconButton(
              icon: Icon(Icons.location_on),
              color: selectedIndex == 1 ? Colors.amber : Colors.grey,
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              }),
          IconButton(
              icon: Icon(Icons.favorite_border),
              color: selectedIndex == 2 ? Colors.amber : Colors.grey,
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                });
              }),
          IconButton(
              icon: Icon(Icons.person_outline),
              color: selectedIndex == 3 ? Colors.amber : Colors.grey,
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                });
              }),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.yellow[700]),
      ),
      bottomNavigationBar: bottomAppbar(context),
      body: Homebody(),
      backgroundColor: Colors.white,
    );
  }
}

class Homebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Container(
      height: size.height,
      width: size.width,
      // padding: EdgeInsets.symmetric(vertical: 20),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Searchbox(size: size),
          ),
          Container(
            height: size.width - 140,
            width: size.width,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Swiper(
              itemCount: 3,
              pagination: SwiperPagination(
                alignment: Alignment.bottomRight,
                // margin: EdgeInsets.only(bottom: ),
                builder: DotSwiperPaginationBuilder(
                  color: Colors.white,
                  size: 6.0,
                  activeSize: 9.0,
                  space: 3.0,
                  activeColor: Colors.amber[500],
                ),
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageList2[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Thai Style',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '12 Places',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Most Popular',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.teal[300]),
                ),
              ],
            ),
          ),
          Container(
            height: 185,
            width: size.width,
            // padding: EdgeInsets.only(left: 10),
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return CustmCard1(
                  imageData: imageList[index],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Meal Deals',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.teal[300]),
                ),
              ],
            ),
          ),
          Container(
            height: 195,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return MealsCard(
                  imageData: meals[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class MealsCard extends StatelessWidget {
  final ImageData imageData;
  const MealsCard({
    Key key,
    this.imageData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 195,
      width: 135,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageData.image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          title: Text(
            'Greek Style',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text('34 Places', style: TextStyle(color: Colors.white54)),
        ),
      ),
    );
  }
}

class Searchbox extends StatelessWidget {
  const Searchbox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: size.width,
      child: TextField(
        decoration: InputDecoration(
          alignLabelWithHint: true,
          contentPadding: EdgeInsets.all(5),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Color(0xffffcc2a), width: 2.0)),
          hintText: 'Search for restaurant...',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
