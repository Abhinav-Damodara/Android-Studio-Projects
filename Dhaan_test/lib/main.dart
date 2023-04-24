import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'NavBar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HomeApp());
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFFf34a6a),
        title: Text(
          'Dhaan',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      // body: SingleChildScrollView(
      //   child: Center(
      //     child: Column(
      //       children: [
      //         CarouselSlider(
      //           options: CarouselOptions(
      //             enableInfiniteScroll: true,
      //             autoPlay: true,
      //             initialPage: 0,
      //             enlargeCenterPage: true,
      //             viewportFraction: 0.85,
      //           ),
      //           items: <Widget>[
      //             Image.asset(
      //               'images/slide1.jpg',
      //               fit: BoxFit.fill,
      //             ),
      //             Image.asset(
      //               'images/slide2.jpg',
      //               fit: BoxFit.fill,
      //             ),
      //             Image.asset(
      //               'images/slide3.jpg',
      //               fit: BoxFit.fill,
      //             ),
      //             Image.asset(
      //               'images/slide4.jpg',
      //               fit: BoxFit.fill,
      //             ),
      //           ],
      //         ),
      //         SizedBox(
      //           height: 50,
      //         ),
      //         // CircleAvatar(
      //         //   radius: 100.0,
      //         //   child: Image(
      //         //     image: AssetImage('images/main.jpg'),
      //         //     fit: BoxFit.cover,
      //         //   ),
      //         // ),
      //         // SizedBox(
      //         //   height: 60,
      //         // ),
      //         Text(
      //           'Want To Share Food?',
      //           style: TextStyle(
      //             fontSize: 35.0,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         SizedBox(
      //           height: 25,
      //         ),
      //         IconButton(
      //           icon: Image.asset('images/donate.png'),
      //           iconSize: 175,
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => DonatePage()),
      //             );
      //           },
      //         ),
      //         Text(
      //           'Donate',
      //           style: TextStyle(
      //             fontSize: 25,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         Text(
      //           'Donte your food \n for the needy',
      //           style: TextStyle(
      //             color: Colors.grey,
      //             fontSize: 15,
      //           ),
      //           textAlign: TextAlign.center,
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: Container(
        height: 60,
        color: Color(0xFFf34a6a),
        child: InkWell(
          onTap: () {
            Clipboard.setData(ClipboardData());
            HapticFeedback.vibrate();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DonatePage()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: const <Widget>[
                Icon(
                  Icons.volunteer_activism,
                  color: Colors.white,
                ),
                Text(
                  'Donate',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage('images/Picture1.png'),
            ),
            Text(
              'Donate Food Save Lives',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  viewportFraction: 0.85,
                ),
                items: <Widget>[
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
            ),
            Text(
              'Want To Share Food?',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
          ],
        ),
      ),
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
        backgroundColor: Colors.cyan.shade50,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.indigoAccent[400],
          title: const Text(
            _title,
          ),
        ),
        body: SingleChildScrollView(
          child: Donate(),
        ),
      ),
    );
  }
}

class Donate extends StatelessWidget {
  const Donate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 237,
            width: double.infinity,
            // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/t.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.25), BlendMode.darken)),
            ),
            child: MaterialButton(
              child: const Text(
                'Morning',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MorningPage()),
                );
              },
            ),
          ),
          Container(
            height: 237,
            width: double.infinity,
            // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/2.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.25), BlendMode.darken)),
            ),
            child: MaterialButton(
              child: const Text(
                'Afternoon',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Afternoon()),
                );
              },
            ),
          ),
          Container(
            height: 237,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/3.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.25), BlendMode.darken)),
            ),
            child: MaterialButton(
              child: const Text(
                'Night',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NightPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MorningPage extends StatelessWidget {
  const MorningPage({Key? key}) : super(key: key);
  static const String _title = 'Dhaan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.indigoAccent,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(_title)),
        body: const MorningPageStateful(),
      ),
    );
  }
}

class MorningPageStateful extends StatefulWidget {
  const MorningPageStateful({Key? key}) : super(key: key);

  @override
  State<MorningPageStateful> createState() => _MorningPageStatefulState();
}

class _MorningPageStatefulState extends State<MorningPageStateful> {
  final _firestore = FirebaseFirestore.instance;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  String? nametext;
  String? phone_no;
  String? addresstext;
  String? areatext;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/t.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.25), BlendMode.darken)),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5),
            child: const Text(
              'Morning',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          ),
          Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                'Fill the details listed below',
                style: TextStyle(fontSize: 20),
              )),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
              onChanged: (value) {
                nametext = value;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: mobileController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mobile number',
              ),
              onChanged: (value) {
                phone_no = value;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: addressController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Address',
              ),
              onChanged: (value) {
                addresstext = value;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: areaController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Area',
              ),
              onChanged: (value) {
                areatext = value;
              },
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                _firestore.collection('morning').add({
                  'Name': nametext,
                  'Phone number': phone_no,
                  'Address': addresstext,
                  'Area': areatext,
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SubmitPage()));
              },
              style:
                  ElevatedButton.styleFrom(primary: Colors.indigoAccent[400]),
            ),
          ),
        ],
      ),
    );
  }
}

class Afternoon extends StatelessWidget {
  const Afternoon({Key? key}) : super(key: key);
  static const String _title = 'Dhaan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.purple.shade50,
        appBar: AppBar(
            backgroundColor: Colors.indigoAccent[400],
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(_title)),
        body: const AfternoonPageState(),
      ),
    );
  }
}

class AfternoonPageState extends StatefulWidget {
  const AfternoonPageState({Key? key}) : super(key: key);

  @override
  State<AfternoonPageState> createState() => _AfternoonPageStateState();
}

class _AfternoonPageStateState extends State<AfternoonPageState> {
  final _firestore = FirebaseFirestore.instance;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  String? nametext;
  String? phone_no;
  String? addresstext;
  String? areatext;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/2.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.25), BlendMode.darken)),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(5),
              child: const Text(
                'Afternoon',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              )),
          Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                'Fill the details listed below',
                style: TextStyle(fontSize: 20),
              )),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
              onChanged: (value) {
                nametext = value;
              },
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: mobileController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mobile number',
              ),
              onChanged: (value) {
                phone_no = value;
              },
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: addressController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Address',
              ),
              onChanged: (value) {
                addresstext = value;
              },
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: areaController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Area',
              ),
              onChanged: (value) {
                areatext = value;
              },
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                _firestore.collection('afternoon').add(
                  {
                    'Name': nametext,
                    'Phone number': phone_no,
                    'Address': addresstext,
                    'Area': areatext,
                  },
                );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SubmitPage()));
              },
              style:
                  ElevatedButton.styleFrom(primary: Colors.indigoAccent[400]),
            ),
          ),
        ],
      ),
    );
  }
}

class NightPage extends StatelessWidget {
  const NightPage({Key? key}) : super(key: key);
  static const String _title = 'Dhaan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.purple.shade50,
        appBar: AppBar(
            backgroundColor: Colors.indigoAccent,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(_title)),
        body: const NightPageState(),
      ),
    );
  }
}

class NightPageState extends StatefulWidget {
  const NightPageState({Key? key}) : super(key: key);

  @override
  State<NightPageState> createState() => _NightPageStateState();
}

class _NightPageStateState extends State<NightPageState> {
  final _firestore = FirebaseFirestore.instance;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  String? nametext;
  String? phone_no;
  String? addresstext;
  String? areatext;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/3.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.25), BlendMode.darken)),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(5),
              child: const Text(
                'Night',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              )),
          Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                'Fill the details listed below',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
              onChanged: (value) {
                nametext = value;
              },
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: mobileController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mobile number',
              ),
              onChanged: (value) {
                phone_no = value;
              },
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: addressController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Address',
              ),
              onChanged: (value) {
                addresstext = value;
              },
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: areaController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Area',
              ),
              onChanged: (value) {
                areatext = value;
              },
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                _firestore.collection('night').add({
                  'Name': nametext,
                  'Phone number': phone_no,
                  'Address': addresstext,
                  'Area': areatext,
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SubmitPage()));
              },
              style:
                  ElevatedButton.styleFrom(primary: Colors.indigoAccent[400]),
            ),
          ),
        ],
      ),
    );
  }
}

class SubmitPage extends StatelessWidget {
  const SubmitPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // backgroundColor: Colors.purple.shade50,
          appBar: AppBar(
            backgroundColor: Colors.deepPurple[400],
            leading: IconButton(
              icon: const Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeApp()),
                );
              },
            ),
            title: Text('Dhaan'),
          ),
          body: Container(
            height: double.maxFinite,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/t1.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.25), BlendMode.darken)),
            ),
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   // crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     // Container(
            //     //     width: 200.0,
            //     //     height: 200.0,
            //     //     decoration: new BoxDecoration(
            //     //         shape: BoxShape.circle,
            //     //         image: new DecorationImage(
            //     //             fit: BoxFit.fill,
            //     //             image: new AssetImage('images/logo.jpg')
            //     //         )
            //     //     )),
            //     // const Spacer(flex: 1),
            //     Text(
            //       "You Will Recieve A Call Shortly",
            //       style: TextStyle(
            //           fontFamily: 'Montserrat',
            //           fontSize: 20.0,
            //           fontWeight: FontWeight.normal),
            //     ),
            //     // const Spacer(flex: 1),
            //     Text(
            //       "'THANK YOU'",
            //       style: TextStyle(
            //           fontFamily: 'Montserrat',
            //           fontSize: 40.0,
            //           fontWeight: FontWeight.w500),
            //     ),
            //     Text(
            //       "You Will Help Us Bring A Change ",
            //       style: TextStyle(
            //         fontFamily: 'Montserrat',
            //         fontSize: 15.0,
            //         fontWeight: FontWeight.w800,
            //       ),
            //     ),
            //
            //   ],
            // ),
          )),
    );
  }
}
