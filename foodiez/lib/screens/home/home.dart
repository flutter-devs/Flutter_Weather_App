import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:foodiez/models/datamodel.dart';
import 'package:foodiez/screens/collections/collection.dart';
import 'package:foodiez/screens/favourite/favourite.dart';
import 'package:foodiez/screens/home/components/mealsCard.dart';
import 'package:foodiez/screens/home/components/mostPopularCard.dart';
import 'package:foodiez/screens/home/components/restaurantCrad.dart';
import 'package:foodiez/screens/nearby/nearby.dart';
import 'package:foodiez/screens/popular/popular.dart';
import 'package:foodiez/widgets/searchBox.dart';
import 'package:foodiez/screens/home/components/suggsenCard.dart';
import 'package:foodiez/screens/profile/profile.dart';
import 'package:foodiez/widgets/seeAll.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  String appBarText = 'Home';
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
                  appBarText = 'Home';
                });
              }),
          IconButton(
              icon: Icon(Icons.location_on),
              color: selectedIndex == 1 ? Colors.amber : Colors.grey,
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                  appBarText = 'Nearby';
                });
              }),
          IconButton(
              icon: Icon(Icons.favorite_border),
              color: selectedIndex == 2 ? Colors.amber : Colors.grey,
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                  appBarText = 'Favourite';
                });
              }),
          IconButton(
              icon: Icon(Icons.person_outline),
              color: selectedIndex == 3 ? Colors.amber : Colors.grey,
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                  appBarText = 'Profile';
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
          appBarText,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.yellow[700]),
      ),
      bottomNavigationBar: bottomAppbar(context),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          Homebody(),
          NearbyScreen(),
          Favourite(),
          ProfileScreen(),
        ],
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}

class Homebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List text = ['KFC Broadway', 'Greek House', 'Spice Alley', 'Canton House'];
    Size size = Get.mediaQuery.size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.white,
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
              autoplay: true,
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
                return SuggestionCard(
                  imageData: suggestion[index],
                );
              },
            ),
          ),
          SeeAll(
            text: 'Most Popular',
            buttonText: 'See all',
          ),
          Container(
            height: size.width * 0.45,
            margin: EdgeInsets.only(bottom: 20),
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return MostPopularCard(
                  imageData: mostpop[index],
                  text: text[index],
                );
              },
            ),
          ),
          SeeAll(
            text: 'Meals Deals',
            buttonText: 'See all',
          ),
          Container(
            height: size.width * 0.45,
            margin: EdgeInsets.only(bottom: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(Collection());
                  },
                  child: MealsCard(
                    imageData: meals[index],
                    textData: mealsTxt[index],
                  ),
                );
              },
            ),
          ),
          SeeAll(
            text: 'Popular Restaurants',
            buttonText: 'See all',
          ),
          Container(
            height: size.width * 0.3,
            margin: EdgeInsets.only(bottom: 20),
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(PopularRest());
                  },
                  child: PopularRestCard(
                    imageData: restron[index],
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
