import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  void answerQuestion() {
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn Flutter'),
        ),
        body: Column(
          children: <Widget>[
            Text('Test'),
            RaisedButton(
              child: Text('HI Ola'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('HI Ola 2'),
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}
