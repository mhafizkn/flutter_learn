import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final String questionText;

  // const Question({
  //   this.questionText,
  //   Key key,
  // }) : super(key: key);

  String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
