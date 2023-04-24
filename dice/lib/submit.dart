import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dhaan'),
        ),
        body: Center(
          child: Text(
            "          Thankyou!\n We have recieved your details.\n You will recieve a call shortly.",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 35),
            maxLines: 5,
          ),
        ),
      ),
    );
  }
}
