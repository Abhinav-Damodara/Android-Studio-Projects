import 'dart:math';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            leftdice = Random().nextInt(6) + 1;
            print('dicenumber = $leftdice');
          });
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
          ],
        ),
      ),
    );
  }
}
