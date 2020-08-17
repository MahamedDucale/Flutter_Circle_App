import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorCircle extends StatelessWidget{

  final int red;
  final int blue;
  final int green;
  ColorCircle(int redin,int bluein,int greenin):this.red = redin,this.blue = bluein,this.green = greenin;

Widget build(BuildContext context){
  //build method to return colored circle
    return new Container(width: 200,
    height: 200,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        color: new Color.fromRGBO(this.red,this.green,this.blue,1),
      )
    );
  } 
}