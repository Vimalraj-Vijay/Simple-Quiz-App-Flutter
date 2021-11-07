import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final VoidCallback _resetQuiz;

  Result(this._totalScore, this._resetQuiz);

  String get resultPhrase {
    String resultText;
    if (_totalScore == 400) {
      resultText = 'You are awesome !! Your Score is $_totalScore';
    } else if (_totalScore > 300) {
      resultText = 'Well Done !! Your Score is $_totalScore';
    } else if (_totalScore > 250) {
      resultText = 'Way to go.. !! Your Score is $_totalScore';
    } else if (_totalScore > 100) {
      resultText = 'Good try !! Your Score is $_totalScore';
    } else {
      resultText = 'Learn More and try again.. !! Your Score is $_totalScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(25),
      child: Column(
        children: [
          Center(
            child: Text(
              resultPhrase,
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                onPrimary: Colors.white,
              ),
              child: Text("Restart the quiz.."),
              onPressed: _resetQuiz,
            ),
          )
        ],
      ),
    );
  }
}
