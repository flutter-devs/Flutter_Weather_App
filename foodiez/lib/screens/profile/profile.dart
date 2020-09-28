import 'package:flutter/material.dart';
import 'package:foodiez/screens/friends/friends.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 60),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                Text(
                  'Jenny Limar',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('New York',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                FlatTextButton(text: 'Payment Method'),
                GestureDetector(
                    onTap: () {
                      Get.to(Friends());
                    },
                    child: FlatTextButton(text: 'Invite Friends')),
                FlatTextButton(text: 'Settings'),
                FlatTextButton(text: 'Log out'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FlatTextButton extends StatelessWidget {
  final String text;
  const FlatTextButton({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Divider(thickness: 2),
        )
      ],
    );
  }
}
