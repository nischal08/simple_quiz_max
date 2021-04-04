import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color ?',
      'What\'s your favourite animal ?',
    ];

    void _answerQuestion() {
      _questionIndex = _questionIndex + 1;
      setState(() {});
      print(_questionIndex);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions.elementAt(_questionIndex),
            ),
            Answer( _answerQuestion),
            Answer( _answerQuestion),
            Answer( _answerQuestion),
          ],
        ),
      ),
    );
  }
}
