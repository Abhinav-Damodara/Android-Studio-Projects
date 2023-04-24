import 'package:flutter/material.dart';

import 'contact us.dart';
import 'help center.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Help'),
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent[700],
  ),
    body: Center(
        child: SafeArea(
          child: ListView(
            children: [

              ListTile(
                leading: const Icon(Icons.help_center),
                title: const Text('Help Center'),
                onTap: () => selectedItem(context, 0),
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text('Contact us'),
                onTap: () => selectedItem(context, 1),
              ),

            ],
          ),
        )
    ),
  );
}
void selectedItem(BuildContext context, int index) {
  switch (index) {

    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const HelpcenterPage(),
      ));
      break;

    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const ContactusPage(),
      ));
      break;
  }
}