import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[300],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
            ),
          ),
          backgroundColor: Colors.red,
        ),
        // bottomNavigationBar: Text(
        //   "Developed by Tanuj",
        //   style: TextStyle(
        //     fontSize: 10,
        //     color: Colors.white,
        //   ),
        // ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeState() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    // leftDiceNumber = 4;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 2,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeState();
                });
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            // flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeState();
                });
              },
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
