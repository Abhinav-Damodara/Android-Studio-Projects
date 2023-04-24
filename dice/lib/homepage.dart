import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../../Dhaan/lib/NavBar.dart';
import 'donate.dart';

void main() {
  runApp(MyApp());
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  static const String _title = 'Dhaan';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: NavBar(),
          backgroundColor: const Color(0xFFFFFFFF),
          appBar: AppBar(
            backgroundColor: const Color(0xFF2196F3),
            title: Text(
              _title,
              style: TextStyle(
                color: Color(0xFFBBDEFB),
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          body: const Bod()),
    );
  }
}

class Bod extends StatelessWidget {
  const Bod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ImageSlideshow(
          width: double.infinity,
          height: 400,
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
              'images/slide1.jpg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/slide2.jpg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/slide3.jpg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/slide4.jpg',
              fit: BoxFit.fill,
            ),
          ],
        ),
        Container(
          height: 50,
          width: 500,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFFEB3B),
            ),
            child: const Text(
              'Donate',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DonatePage())),
          ),
        ),
      ],
    );
  }
}

class DonatePage extends StatefulWidget {
  const DonatePage({Key? key}) : super(key: key);

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  static const String _title = 'Dhaan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        drawer: NavBar(),
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFF2196F3),
          title: const Text(
            _title,
            style: TextStyle(
              color: Color(0xFFBBDEFB),
              fontSize: 50.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
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
        ),
      ),
    );
  }
}
