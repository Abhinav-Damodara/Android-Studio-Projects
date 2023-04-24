import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('App Language'),
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent[700],
    ),
    body: Center(
        child: SafeArea(
          child: ListView(
            children: [

              ListTile(
                title: const Text('English'),
                onTap: (){

                }
              ),
              const Divider(),

              ListTile(
                title: const Text('తెలుగు'),
                onTap: (){

                }
              ),
              const Divider(),
              ListTile(
                title: const Text('हिन्दी'),
                onTap: (){
                }
              ),
              const Divider(),
              ListTile(
                  title: const Text('தமிழ்'),
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