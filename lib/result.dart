import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result(this.score, this.reset);

  String get resultscore {
    var resulttext = "you did it" + score.toString();
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Hello YOur Score is ==" + resultscore,
            style: TextStyle(fontSize: 40),
          ),
          FlatButton(child: Text("Reset"), onPressed: reset),
        ],
      ),
    );
  }
}
