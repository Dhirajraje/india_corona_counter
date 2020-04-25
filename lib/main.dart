import 'package:flutter/material.dart';
import 'package:indiacoronacounter/clipedHeaderWidget.dart';
import 'cardWidgets.dart';

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
              CustomCards(
                child:  Row(
                  children: <Widget>[
                    Expanded(
                      flex :1,
                      child: Icon(
                        Icons.location_on,
                        color: Colors.deepOrangeAccent,
                        size: 20.0,
                      ),
                    ),
                    Expanded(
                      flex:5,
                      child: Center(
                        child: Text(
                          'India',
                          style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'BalooBhaina',
                              color: Colors.deepOrangeAccent
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                height: 50.0,
                width: double.infinity,
                borderRadius: 25,
                padding: EdgeInsets.symmetric(horizontal: 25),
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
              ),
            ],
          ),
        ),
    );
  }
}
