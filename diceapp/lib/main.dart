import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            'DICE',
            style: TextStyle(
              fontFamily: 'Kdam Thmor Pro',
            ),
          ),
          backgroundColor: Colors.grey,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftdice = 5;
  var rightdice = 5;

  void ChangeDiceFace() {
    HapticFeedback.heavyImpact();
    setState(
      () {
        leftdice = Random().nextInt(6) + 1;
        rightdice = Random().nextInt(6) + 1;
        print('dicenumber = $leftdice,$rightdice');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          ChangeDiceFace();
        },
        child: Row(
          children: <Widget>[
            Expanded(
              //flex: 4,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                child: Image(
                  image: AssetImage('images/dice$leftdice.png'),
                ),
              ),
            ),
            Expanded(
              //flex: 4,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                child: Image(
                  image: AssetImage('images/dice$rightdice.png'),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
