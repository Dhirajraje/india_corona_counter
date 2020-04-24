import 'package:flutter/material.dart';
import 'package:indiacoronacounter/header.dart';

void main() => runApp(
  MaterialApp(
    home: SafeArea(
      child: MyApp(),
    ),
  ),
);
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          child: Column(
            children: <Widget>[
                appHeaderContainer(),
            ],
          ),
        ),
    );
  }
}
