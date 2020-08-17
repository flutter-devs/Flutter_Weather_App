import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final List<BoxShadow> boxshadow;
  final String text;
  final Color buttonColor, textcolor;
  final void Function() onPressed;
  final double height, width;
  final TextStyle textStyle;
  const Button({
    Key key,
    this.boxshadow,
    this.text,
    this.buttonColor,
    this.onPressed,
    this.textcolor,
    this.height,
    this.width,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: boxshadow,
      ),
      child: FlatButton(
        onPressed: onPressed,
        color: buttonColor,
        padding: EdgeInsets.symmetric(horizontal: 10),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Text(
          text,
          style: textStyle,
        ),
        textColor: textcolor,
      ),
    );
  }
}
