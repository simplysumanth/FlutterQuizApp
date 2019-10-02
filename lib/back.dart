import 'package:flutter/material.dart';

class Back extends StatelessWidget {
  final Function index;
  Back(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(100),
      child: RaisedButton(
        child: Text('back'),
        onPressed: index,
        ),
      
    );
  }
}