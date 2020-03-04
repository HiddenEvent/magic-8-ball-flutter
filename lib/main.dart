import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(AskApp());

class AskApp extends StatefulWidget {
  @override
  _AskAppState createState() => _AskAppState();
}

class _AskAppState extends State<AskApp> {
  int askNum = 1;
  void askChange(){
    askNum = Random().nextInt(5)+1;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me AnyThing'),
          ),
        ),
        body: Center(
          child: Container(
            child: FlatButton(
              child: Image.asset('images/ball$askNum.png'),
              onPressed: () {
                setState(() {
                  askChange();
                });
              },
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
