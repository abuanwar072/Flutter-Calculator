import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    this.backgroundColor = Colors.transparent,
    this.textColor = kTextColorBlack,
    @required this.text,
    @required this.press,
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: backgroundColor,
        child: FlatButton(
          color: backgroundColor,
          padding: EdgeInsets.all(30),
          onPressed: press,
          child: Text(
            "$text",
            style: TextStyle(
              color: textColor,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
