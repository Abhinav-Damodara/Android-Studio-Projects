import 'package:flutter/material.dart';

class HelpcenterPage extends StatelessWidget {
  const HelpcenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Help Center'),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent[700],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            '\n If you are intrested to donate please click on the donate option shown in the home page. Now you will be directed to donate session page please choose the session that you have to donate. Now you will be directed to details page in which you have to fill the details and then submit those details. Then we will call you for the confirmation of location and quantity of food that you wanted to donate. ',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      );
}
