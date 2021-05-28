import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'QuestionText': 'What is your name',
      'Answers': [
        {'text': 'Ramanan', 'score': 10},
        {'text': 'Prahalad', 'score': 5},
        {'text': 'Abhishek', 'score': 2}
      ]
    },
    {
      'QuestionText': 'What is your favourite color',
      'Answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'gray', 'score': 2}
      ]
    },
    {
      'QuestionText': 'What is your favourite animal',
      'Answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Goat', 'score': 2},
        {'text': 'Sheep', 'score': 1}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion({int score = 0}) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex > _questions.length) {
      print(1);
      _questionIndex = 0;
      _totalScore = 0;
    }

    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('First App'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(_answerQuestion, _questionIndex, _questions)
                : Result(_totalScore, _answerQuestion)));
  }
}
