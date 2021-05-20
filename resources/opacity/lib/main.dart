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

  bool _visible ;


  @override
  void initState() {
    _visible= true;
  }

  void toggleVisible()
  {
    setState(() {
      _visible=!_visible;
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
            new Opacity(opacity: _visible? 1.0 : 2.0,
            child: new Text("Now you see me now you dont !"),),
            new RaisedButton(onPressed: toggleVisible,child: new Text("Toggle"),)
          ],
        ),
      ),
    );
  }
}