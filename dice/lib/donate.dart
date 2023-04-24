import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../../Dhaan/lib/NavBar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Dhaan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        drawer: NavBar(),
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150.0),
          child: AppBar(
            backgroundColor: const Color(0xFF2196F3),
            /*title: const Text(
              _title,
              style: TextStyle(
                color: Color(0xFFBBDEFB),
                fontSize: 50.0,
                fontWeight: FontWeight.w800,
              ),
            ),*/
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: Text(
                  'Dhaan',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color(0xFFBBDEFB),
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ImageSlideshow(
            width: double.infinity,
            height: 200,
            initialPage: 0,
            indicatorColor: Colors.blue,
            indicatorBackgroundColor: Colors.grey,
            onPageChanged: (value) {
              print('Page changed: $value');
            },
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              Image.asset(
                'images/IMG_4457.JPG',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/IMG_4457.JPG',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/IMG_4457.JPG',
                fit: BoxFit.cover,
              ),
            ],
          ),
          Container(
            height: 50,
            width: 500,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFFFEB3B),
              ),
              child: const Text(
                'Morning',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {},
            ),
          ),
          Container(
              height: 50,
              width: 500,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFFFEB3B),
                ),
                child: const Text(
                  'Afternoon',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {},
              )),
          Container(
            height: 50,
            width: 500,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFFFEB3B),
              ),
              child: const Text(
                'Night',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
