import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

class Myhome extends StatefulWidget {
  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var questions = [
    {
      'questionsText': "What\'s your national animal?",
      'answer': [
        {"text": 'Tiger', "score": 100},
        {"text": 'Lion', "score": 0},
        {"text": 'Elephant', "score": 0},
        {"text": 'Cow', "score": 0},
      ]
    },
    {
      'questionsText': "What\'s your national Bird?",
      'answer': [
        {"text": 'Hen', "score": 0},
        {"text": 'Eagle', "score": 0},
        {"text": 'Peacock', "score": 100},
        {"text": 'Duck', "score": 0},
      ]
    },
    {
      'questionsText': "What\'s your national Game?",
      'answer': [
        {"text": 'Cricket', "score": 0},
        {"text": 'Football', "score": 0},
        {"text": 'Hockey', "score": 20},
        {"text": 'None', "score": 100},
      ]
    },
    {
      'questionsText': "What\'s your national Language?",
      'answer': [
        {"text": 'Hindi', "score": 10},
        {"text": 'Tamil', "score": 0},
        {"text": 'Telugu', "score": 0},
        {"text": 'None', "score": 100},
      ]
    },
  ];

  void answerChosen(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz app"),
          backgroundColor: Colors.deepOrange,
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerChosen: answerChosen,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
