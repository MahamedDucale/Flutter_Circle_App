import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'ColorValueChanger.dart';
import 'ColorCircle.dart';
void main() {
  runApp(new ColorMixer());
}
class ColorMixer extends StatefulWidget{
  _ColorMixerState createState() => new _ColorMixerState();
}

class _ColorMixerState extends State<ColorMixer>{
  int red = 0;
  int blue = 0;
  int green = 0;
  Widget build(BuildContext context){
    return new MaterialApp(debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(title: new Text("Color Changer App"),centerTitle: true),
        body: new SafeArea(
          child: new Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new ColorCircle(red,blue,green),
              new Text("Red"),
              new ColorValueChanger("Red",red,setColortot),
              new Text("Blue"),
              new ColorValueChanger("Blue",blue,setColortot),
              new Text("Green"),
              new ColorValueChanger("Green",green,setColortot)
              ]
          )
        ),
      ),
    );
  }
  void setColortot(String colorname,int val){
    setState(() {
       switch (colorname) {
      case "Red":
        this.red = val;
        break;
        case "Blue":
        this.blue = val;
        break;
        case "Green":
        this.green = val;
        break;
      default:
    }
    });
  }
}