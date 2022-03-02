import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

// void main => runApp(myApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    //Todo: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
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
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Change questions'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('HI Ola 2'),
              onPressed: () => print('Hi Flutter!'), // Shortcut
            ),
            RaisedButton(
              child: Question(questions[_questionIndex]),
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
