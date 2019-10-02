import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
// void onClick(int n){
//   print(n);
// }
  final _questions = const [
    {
      "question": 'what\'s your fav color',
      "answer": [{'text':'black','score':5}, {'text':'white','score':1}, {'text':'orange','score':3}, {'text':'blue','score':2}]
    },
    {
      "question": 'what\'s your favourite food',
      "answer": [{'text':'idly','score':1},{'text':'dosa','score':2}, {'text':'pizza','score':10}, {'text':'burger','score':7}]
    },
  ];

  int _index = 0;
  int _totalScore = 0;

  void _resetQuiz(){
    setState(() {
     _index =0;
     _totalScore=0; 
    });
  }

  void _questionSelect(int score) {

    _totalScore+=score;
    
    setState(() {
      _index += 1;
    });
  }

  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('First App'),
      ),
      backgroundColor: Colors.blue,
      body: _index < _questions.length
          ? Quiz(
              questions: _questions,
              index: _index,
              questionSelect: _questionSelect,
            )
          : Result(_totalScore, _resetQuiz) ,
    ),
     );
  }
}
