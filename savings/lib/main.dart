import 'package:flutter/material.dart';

void main() {
  runApp(const Page1());
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Page1State(),
        ),
      ),
    );
  }
}

class Page1State extends StatelessWidget {
  const Page1State({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('images/pic1.png'),
        const Text(
          'GET THINGS DONE WITH OUTLAY',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF00F0B6),
          ),
          child: const Text('Get Started'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Page2()),
            );
          },
        )
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Page2State(),
          ),
        ),
      ),
    );
  }
}

class Page2State extends StatefulWidget {
  const Page2State({Key? key}) : super(key: key);

  @override
  State<Page2State> createState() => _Page2StateState();
}

class _Page2StateState extends State<Page2State> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passconfirm = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            child: Text(
              'Welcome Onboard!',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            child: Text(
              'Lets Help you meet up your tasks',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Your Full Name',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            controller: addressController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Your Email Address',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            controller: password,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Password',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            controller: passconfirm,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Confirm Password',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF00F0B6),
              fixedSize: Size(270.0, 40.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page4()),
              );
            },
            child: Text('REGISTER'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already Have an Account?',
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page3()),
                );
              },
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00F0B6),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Welcome Back!',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Page3State(),
          ),
        ),
      ),
    );
  }
}

class Page3State extends StatefulWidget {
  const Page3State({Key? key}) : super(key: key);

  @override
  State<Page3State> createState() => _Page3StateState();
}

class _Page3StateState extends State<Page3State> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          "let's help you meet up your tasks",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        Image(
          image: AssetImage('images/pic1.png'),
          height: 200.0,
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Your Email',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          child: TextField(
            controller: emailcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Password',
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Color(0xFF00F0B6),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Page4()),
            );
          },
          child: Text(
            'Sign In',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF00F0B6),
            fixedSize: Size(270.0, 40.0),
          ),
        ),
      ],
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Page4State(),
        ),
      ),
    );
  }
}

class Page4State extends StatefulWidget {
  const Page4State({Key? key}) : super(key: key);

  @override
  State<Page4State> createState() => _Page4StateState();
}

class _Page4StateState extends State<Page4State> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Center(
          child: CircleAvatar(
            foregroundImage: AssetImage('images/pro.png'),
            radius: 70.0,
          ),
        ),
        SizedBox(
          width: 300.0,
          height: 50.0,
          child: ElevatedButton(
            child: Text(
              "Income",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 300.0,
          height: 50.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Expenses',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          width: 300.0,
          height: 50.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Savings',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
