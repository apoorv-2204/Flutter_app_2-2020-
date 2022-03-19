import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function functionPointer;
  final String answertext;

  Answer(this.functionPointer, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        child: Text(answertext),
        onPressed: functionPointer,
        color: Colors.white,
        textColor: Colors.red,
      ), //static propertycolors.colr
    );
  }
}
