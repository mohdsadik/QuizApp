import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
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
      print('we have more questions');
    } else {
      print('No more questions');
    }
  }

  var _questions = [
    {
      'questionText': 'What\'s you favourite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 8},
        {'text': 'Elephant', 'score': 6},
        {'text': 'Lion', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favourite thing to do',
      'answers': [
        {'text': 'Watch Moive', 'score': 10},
        {'text': 'Play Indoor games', 'score': 7},
        {'text': 'Play Outdoor Games', 'score': 5},
        {'text': 'Sleep', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favourite fruit?',
      'answers': [
        {'text': 'Apple', 'score': 10},
        {'text': 'Orange', 'score': 7},
        {'text': 'Mango', 'score': 5},
        {'text': 'Watermelon', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favourite place to go',
      'answers': [
        {'text': 'School', 'score': 10},
        {'text': 'Home', 'score': 7},
        {'text': 'Hill Station', 'score': 5},
        {'text': 'Beaches', 'score': 4}
      ],
    },
    {
      'questionText': 'Who\'s your favourite actor',
      'answers': [
        {'text': 'Salmaan Khan', 'score': 10},
        {'text': 'Sharukh Khan', 'score': 7},
        {'text': 'Hritik Roshan', 'score': 5},
        {'text': 'Ajay Devgan', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {'text': 'Only Shawrma', 'score': 10},
        {'text': 'Love Shawrma', 'score': 7},
        {'text': 'Always Shawrma', 'score': 5},
        {'text': 'Best Shawrma', 'score': 4}
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text("Quizy"),
          ),
          body: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(30),
            padding: EdgeInsetsDirectional.only(top: 130),
            child: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore, _resetQuiz),
          ),
        ));
  }
}
