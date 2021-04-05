import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 1},
        {'text': 'White', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 8},
        {'text': 'Eleplant', 'score': 7},
        {'text': 'Lion', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favourite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Shepher', 'score': 1},
        {'text': 'Angela', 'score': 1},
        {'text': 'John', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more question!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
 