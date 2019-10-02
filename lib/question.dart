import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  
  final String question;
  Question(this.question);
  
  @override
  Widget build(BuildContext context) {
    return Container (
      width: double.infinity,
      margin: EdgeInsets.all(50),
      child: Text(question,
    style: TextStyle(color: Colors.white),
    textAlign: TextAlign.center,
    ));
  }
}