import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function questionincrementer;
  final questionIndex;

  Quiz({this.questions, this.questionincrementer, this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Question(questions[questionIndex][
            'questionText']), //split app into smaller widgets for perf and prod
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          //...spread operator takes the elements out ofthe list and add to the outside list
          return Answer(
              () => questionincrementer(answer['score']), answer['text']);
          //here we are passing a function witin an anonoymous fucntion
          //we are passing pointer to anonymous fucntion but it will not invoke the inside fucntion '//
          //as we are passing the pointer to it and now it can take value also
        }).toList(),
      ],
    ));
  }
}
