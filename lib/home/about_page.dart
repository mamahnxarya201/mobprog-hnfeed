import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MaterialApp Theme'),
        ),
      ),
    );
  }

}