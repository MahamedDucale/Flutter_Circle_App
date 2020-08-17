import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorValueChanger extends StatefulWidget{
  final String title;
  final int colorval;
  final Function func;
  ColorValueChanger(String name_in,int colorval_in,Function func_in):this.title = name_in,
  this.colorval = colorval_in,this.func = func_in{}
  _ColorValueChangerState createState() => new _ColorValueChangerState();
}

class _ColorValueChangerState extends State<ColorValueChanger>{
  Widget build(BuildContext context){
    return new Slider(value: widget.colorval.toDouble(),divisions: 255,min: 0,max: 255, onChanged: setColor,label: widget.colorval.toString());
  }
  void setColor(double value){
    setState(() {
      widget.func(widget.title,value.toInt());
    });
  }
}