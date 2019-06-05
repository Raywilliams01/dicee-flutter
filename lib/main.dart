import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftDiceNumber = 3;
  int _rightDiceNumber = 1;

  int _getNumber() => Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                this.setState(() {
                  _leftDiceNumber = _getNumber();
                });
              },
              child: Image(
                image: AssetImage('images/dice$_leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                this.setState(() {
                  _rightDiceNumber = _getNumber();
                });
              },
              child: Image(
                image: AssetImage('images/dice$_rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
