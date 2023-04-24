import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('About Us'),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent[700],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            '\n As we are seeing now a days there is a lot of food wastage during any function at function halls. So we decided to decrease that daily food wastage. So we get a idea of designing an app in order to reduce that daily food wastage. So we designed this app to reduce that food wastage. With the help of our app you can donate food which left behind after the completion of any function. You can contact us directly to donate food and that food will be collected by us and we will provide that food to the people who is in needy, poor, orphanages, old age homes etc.. You can help the needy directly with the help of our app. ',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 15),
          ),
        ),
      );
}
