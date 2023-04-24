import 'package:flutter/material.dart';

import 'Settings/app language.dart';
import 'Settings/help.dart';
import 'Settings/preferences.dart';
import 'Settings/theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Settings'),
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent[700],
    ),
    body: Center(
        child: SafeArea(
          child: ListView(
            children: [

              ListTile(
                leading: const Icon(Icons.language),
                title: const Text('App language'),
                onTap: () => selectedItem(context, 0),
              ),

              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help'),
                onTap: () => selectedItem(context, 1),
              ),
              ListTile(
                leading: const Icon(Icons.room_preferences_outlined),
                title: const Text('Preferences'),
                onTap: () => selectedItem(context, 2),
              ),
              ListTile(
                leading: const Icon(Icons.brightness_6_rounded),
                title: const Text('Theme'),
                onTap: () => selectedItem(context, 3),


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
        builder: (context) => const LanguagePage(),
      ));
      break;

    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const HelpPage(),
      ));
      break;

    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PreferencesPage(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const ThemePage(),
      ));
      break;


  }
}