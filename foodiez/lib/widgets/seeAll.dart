import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  final String text, buttonText;
  const SeeAll({
    Key key,
    this.text,
    this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            buttonText,
            style: TextStyle(color: Colors.teal[300]),
          ),
        ],
      ),
    );
  }
}
