import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Gitam Blood Donation',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: HomeStless(),
      ),
    );
  }
}

class HomeStless extends StatelessWidget {
  const HomeStless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Log in'),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Sign Up'),
          ),
        ),
      ],
    );
  }
}
