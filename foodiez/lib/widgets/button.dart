import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final double height, width;
  final Function() onPressed;
  const Button({
    Key key,
    this.text,
    this.color,
    this.height,
    this.width,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: RaisedButton(
        color: color,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
