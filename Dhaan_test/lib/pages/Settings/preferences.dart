import 'package:flutter/material.dart';

class PreferencesPage extends StatelessWidget {
  const PreferencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Preferences'),
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent[700],
    ),
  );
}