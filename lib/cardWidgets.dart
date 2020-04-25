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
