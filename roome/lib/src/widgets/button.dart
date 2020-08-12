import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final List<BoxShadow> boxshadow;
  final String text;
  final Color buttonColor, textcolor;
  final void Function() onPressed;
  const Button({
    Key key,
    this.boxshadow,
    this.text,
    this.buttonColor,
    this.onPressed,
    this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: buttonColor,
        boxShadow: boxshadow,
      ),
      child: FlatButton(
        onPressed: onPressed,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15.5),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Text(text),
        textColor: textcolor,
      ),
    );
  }
}
