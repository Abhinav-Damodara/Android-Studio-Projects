import 'package:flutter/material.dart';


class ContactusPage extends StatelessWidget {
  const ContactusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Contact us'),
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent[700],
    ),
    body: Center(
        child: SafeArea(
          child: ListView(
            children: [

              ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text('7842446254'),
                  onTap: () {

                  }
              ),
              ListTile(
                leading: const Icon(Icons.mail),
                title: const Text('marepall@gitam.in'),
                onTap: () {

                }
              ),

            ],
          ),
        )
    ),
  );
}
