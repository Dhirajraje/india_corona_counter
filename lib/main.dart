import 'package:flutter/material.dart';

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
                 Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.pinkAccent],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                    ),
                  ),
              ),
            ],
          ),
        )
    );
  }
}

//class MyCustomClipper extends CustomClipper<Path>{
//  @override
//  Path getClip(Size size) {
//    // TODO: implement getClip
//    final path =Path();
//    path.addArc(Rect.fromCircle(), 20.0, 20.0);
//    return null;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) {
//    // TODO: implement shouldReclip
//    return null;
//  }

//}