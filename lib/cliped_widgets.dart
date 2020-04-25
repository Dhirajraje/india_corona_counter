import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ClipPath appHeaderContainer(){
  return ClipPath(
    clipper: MyCustomClipper(),
    child: Container(
      width: double.infinity,
      height: 200.0,
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepOrangeAccent, Colors.pinkAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Image.asset('ImageDirectory/wear_mask.png',),
          ),
        Expanded(
          child: Text(
            'Stay home,\nStay safe',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontFamily: 'BalooBhaina',
            ),

        ),
        ),
        ],
      ),
    ),
  );
}

class MyCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final path =Path();
    path.lineTo(0, (3*size.height)/4);
    path.quadraticBezierTo(size.width/2, size.height*1.2, size.width, (3*size.height)/4);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}