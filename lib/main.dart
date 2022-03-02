import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main => runApp(myApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    //Todo: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
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
              child: Text('Change questions'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('HI Ola 2'),
              onPressed: () => print('Hi Flutter!'), // Shortcut
            ),
            RaisedButton(
              child: Text('Question Index'),
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
