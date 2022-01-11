// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   runApp(MyApp());
// }

// OR
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

 class _MyAppState extends State { // _ makes it a private class
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
      'What\'s your favourite food?',
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Question(
              questions[_questionIndex]
          ),
          RaisedButton(
            child: Text('Answer 1'), onPressed: _answerQuestions,
          ),
          RaisedButton(
            child: Text('Answer 2'), onPressed: _answerQuestions,
          ),
          RaisedButton(
            child: Text('Answer 3'), onPressed: _answerQuestions,
          ),
          RaisedButton(
            child: Text('Answer 4'), onPressed: () => print('From new function'),
          ),
        ],
      )
    ));
  }
}