import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';




class Quiz extends StatelessWidget {

final List<Map<String, Object>> questions;
final int index;
final Function questionSelect;

Quiz({@required this.questions,@required this.index,@required this.questionSelect});

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Question(questions[index]['question']),
                ...(questions[index]['answer'] as List<Map<String,Object>>).map((answer) {
                  return Answer(() => questionSelect(answer['score']),answer['text']);
                }).toList(),
                
              ],
            );
  }
}