import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>>questions;
  final Function answerqtn;
  final int questionindex;
  Quiz({@required this.questions,
  @required this.answerqtn,
  @required this.questionindex,});


  @override
  Widget build(BuildContext context) {
    return 
      Column(children:[
        Question(questions[questionindex]['questionText']),
        ...(questions[questionindex]['answers'] as List<Map<String,Object>>).map((answer){
          return Answer(()=>answerqtn(answer['score']), answer['text']);
        }).toList()
   
      ],
    );
    
  }
}