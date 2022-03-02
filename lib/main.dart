import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

// void main => runApp(myApp());

class myApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['First Question?', 'Second Question?'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn Flutter'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('HI Ola'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('HI Ola 2'),
              onPressed: () => print('Hi Flutter!'), // Shortcut
            ),
            RaisedButton(
              child: Text('HI Ola 2'),
              onPressed: () {
                // Longer functions
                answerQuestion();
              },
            )
          ],
        ),
      ),
    );
  }
}
