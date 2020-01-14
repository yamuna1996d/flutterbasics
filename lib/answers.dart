import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child:RaisedButton(
        color: Colors.blue,
        textColor: Colors.black,
        child:Text(answerText),
        onPressed:selectHandler,)
      
    );
  }
}