import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.cyan,
        ),
        body: Diceapp(),
      ),
    ),
  );
}

class Diceapp extends StatelessWidget {
  const Diceapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
              child: FlatButton(
                  onPressed: () {
                    print('HIP HIP');
                  },
                  child: Image.asset('images/dice2.png')),
            ),
          ),
          Expanded(
            //flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
              child: FlatButton(
                onPressed: () {
                  print('Hooray!');
                },
                child: Image.asset('images/dice2.png'),
              ),
            ),
          ),
          /*Expanded(
            child: Image.asset('images/dice3.png'),
          ),*/
        ],
      ),
    );
  }
}
