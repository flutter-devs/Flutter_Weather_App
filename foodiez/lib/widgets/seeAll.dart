import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  final String text, buttonText;
  final TextStyle textStyle;
  const SeeAll({
    Key key,
    this.text,
    this.buttonText,
    this.textStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: textStyle),
          Text(
            buttonText,
            style: TextStyle(color: Colors.teal[300]),
          ),
        ],
      ),
    );
  }
}
