import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetHandler;
  String display;
  Result(this.finalScore, this.resetHandler);

  String get scoreText {
    if (finalScore < 10) {
      display = "You can do better!";
    } else {
      display = "well done!";
    }
    return display;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          scoreText,
          style: TextStyle(color: Colors.white, fontSize: 30),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            'restart',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
