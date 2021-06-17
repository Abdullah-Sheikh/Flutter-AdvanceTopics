import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  int turns ;
  double  _value ;

  @override
  void initState() {
   turns =0;
   _value=0.0;
  }

  void _onchanged(double value)
  {
    setState(() {
      _value =value;
      turns = value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My First App'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
           new Slider(value: _value, onChanged: _onchanged,min: 0.0,max: 4.0,),
            new RotatedBox(quarterTurns: turns,
            child: new Text("Sunshine"),),
            new Container(
              child: new Image(image: new AssetImage('images/simle.png')),
              padding: new EdgeInsets.all(32.0),
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.orange,width: 2.0),
                gradient: new RadialGradient(colors: <Color>[Colors.red,Colors.yellow]),
              ),
            )
          ],
        ),
      ),
    );
  }
}