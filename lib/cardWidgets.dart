import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCards extends StatelessWidget {
  double height=0,width=0,borderRadius=0;
  EdgeInsets padding = EdgeInsets.all(0), margin =EdgeInsets.all(0);
  Widget child=Container();
  CustomCards({double height,double width, double borderRadius, EdgeInsets padding , EdgeInsets margin, Widget child}){
      this.child = child;
      this.height = height;
      this.width = width;
      this.borderRadius = borderRadius;
      this.padding = padding;
      this.margin = margin;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(this.borderRadius)),
          boxShadow:[BoxShadow(
            color: Colors.grey,
          )]
      ),
      padding: this.padding,
      margin:this.margin,
      child:this.child,
    );
  }
}
// ignore: missing_return
Color goodMatchColor(Color color){
  if(color==Colors.green)
    return Colors.teal;
  else if(color==Colors.yellow)
    return Colors.orangeAccent;
  else if(color==Colors.red)
    return Colors.pinkAccent;
}
Widget barGraph({int value,String element, Color color, int div}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Icon(
        Icons.account_circle,
        color:color,
        size: 30.0,
      ),
      Container(
        width:30,
        height: value/(div*0.005),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [goodMatchColor(color),color],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
          ),
        ),
      ),
      Text(
        '$value',
        style: TextStyle(
          fontSize: 16,
          color: Colors.black54,
          fontFamily: 'BalooBhaina',
        ),
      ),
      Text(
        '$element',
        style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
          fontFamily: 'BalooBhaina',
        ),
      ),
    ],
  );
}
