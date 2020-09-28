import 'package:flutter/material.dart';
import 'package:foodiez/widgets/reviewCard.dart';

class ReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reviews',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.yellow[700]),
      ),
      body: Reviewbody(),
    );
  }
}

class Reviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return ReviewCard(
                  name: ['Kelly West', 'Jason', 'Cathy'][index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
