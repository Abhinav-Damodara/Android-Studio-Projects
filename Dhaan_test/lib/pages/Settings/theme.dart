import 'package:flutter/material.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: const Text('Theme'),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent[700],
        ),
        body: Center(
           child: SafeArea(
              child: ListView(
                children: [

                ListTile(
                  title: const Text('Light'),
                  onTap: () {

                  }
                ),
                  const Divider(),
                ListTile(
                  title: const Text('Dark'),
                  onTap: (){

                  }
                ),
                  const Divider(),
                  ListTile(
                      title: const Text('System Default'),
                      onTap: (){

                      }
                  ),
                  const Divider(),
                ],
              ),
           )
        ),
      );
}

