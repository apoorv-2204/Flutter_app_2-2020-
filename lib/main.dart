import 'package:flutter/material.dart'; //bloock of imports that point to packages
import 'package:flutter_app_2/quiz.dart';
//first package import is placed
//then user imports are placed

import './quiz.dart';
import './result.dart';

void main() {
  runApp(FlutterApp()); //run app takes a widget and recreate on the screen
  //tells flutter tu draw on the screen render
}

class FlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterAppState();
  }
}

class _FlutterAppState extends State<FlutterApp> {
  final _questions = const [
    {
      "questionText": "what\'s is your fav color",
      "answers": [
        {'text': "Red", "score": 5},
        {'text': "yellow", "score": 8},
        {'text': "green", "score": 1},
        {'text': "blue", "score": 3},
        {'text': "black", "score": 2}
      ]
    },
    {
      "questionText": "what\'s is your fav animal?",
      "answers": [
        {'text': "frog", "score": 5},
        {'text': "cat", "score": 8},
        {'text': "monkey", "score": 1},
        {'text': "donkey", "score": 3},
        {'text': "minimonk", "score": 2}
      ]
    },
    {
      "questionText": "what\'s is your fav game?",
      "answers": [
        {'text': "gta", "score": 5},
        {'text': "forza", "score": 8},
        {'text': "tomb raider", "score": 1},
        {'text': "space", "score": 3},
        {'text': "dongkey konf", "score": 2}
      ]
    },
  ];
  //persistant data for fluter app
  var _questionIndex = 0; //flutter dont automatically re render
  int _totalScore = 0;

  void _reset() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _onPressAnswer(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {}
    setState(() {
      //flutter keeps track of what is changing inside the setstate and change widge accordingly
      _questionIndex++;
    });
    print("yomf");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("AppTitle1O1"),
            ),
            body: ((_questionIndex < _questions.length)
                ? (Quiz(
                    questions: _questions,
                    questionincrementer: _onPressAnswer,
                    questionIndex: _questionIndex))
                : Result(_totalScore, _reset))));
  }
}
