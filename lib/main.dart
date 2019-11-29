import 'package:calculator/constant.dart';
import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: kBackground,
                ),
              ),
              Row(
                children: <Widget>[
                  CalculatorButton(
                    text: "C",
                    backgroundColor: kButtonBackground.withOpacity(0.4),
                    textColor: kTextColorWhite,
                  ),
                  CalculatorButton(
                    text: "()",
                    backgroundColor: kButtonBackground.withOpacity(0.2),
                  ),
                  CalculatorButton(
                    text: "%",
                    backgroundColor: kButtonBackground.withOpacity(0.2),
                  ),
                  CalculatorButton(
                    text: "/",
                    backgroundColor: kButtonBackground.withOpacity(0.2),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  CalculatorButton(
                    text: "7",
                  ),
                  CalculatorButton(
                    text: "8",
                  ),
                  CalculatorButton(
                    text: "9",
                  ),
                  CalculatorButton(
                    text: "x",
                    backgroundColor: kButtonBackground.withOpacity(0.2),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  CalculatorButton(
                    text: "4",
                  ),
                  CalculatorButton(
                    text: "5",
                  ),
                  CalculatorButton(
                    text: "6",
                  ),
                  CalculatorButton(
                    text: "-",
                    backgroundColor: kButtonBackground.withOpacity(0.2),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  CalculatorButton(
                    text: "1",
                  ),
                  CalculatorButton(
                    text: "2",
                  ),
                  CalculatorButton(
                    text: "3",
                  ),
                  CalculatorButton(
                    text: "+",
                    backgroundColor: kButtonBackground.withOpacity(0.2),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(),
                  ),
                  CalculatorButton(
                    text: "0",
                  ),
                  CalculatorButton(
                    text: ".",
                  ),
                  CalculatorButton(
                    text: "=",
                    backgroundColor: kButtonBackground,
                    textColor: kTextColorWhite,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
