import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyappState();
  }
}

class _MyappState extends State<MyApp>{
  final _questions =const [{'questionText':'What is your favorite color?','answers':[{'text':'Blue','score':10},{'text':'Black','score':20},{'text':'Red','score':15},{'text':'Orange','score':5}],},
    {'questionText':'Whats your favorite animal?','answers':[{'text':'Dog','score':30},{'text':'Cat','score':15},{'text':'Cow','score':10},{'text':'Elephant','score':20}],}
    ,
    ];
  var _questionindex=0;
  var _totalScore=0;
  void _reset(){
    setState(() {
      _questionindex=0;
      _totalScore=0;
    });
    

  }


  void _answerqtn(int score){
    // var aBool=true;
    // aBool=false;
    _totalScore += score;

    setState(() {
      _questionindex=_questionindex+1;
    });
    print(_questionindex);

    if (_questionindex < _questions.length){
      print('We have more questions');

    }
    else{
      print('No morer questions!');
    }
  }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(home:Scaffold(
      appBar: AppBar(title:Text('Quiz App'),),
      body: _questionindex < _questions.length ? 
      Quiz(answerqtn: _answerqtn,questionindex: _questionindex,questions: _questions ,)
        // Answer(_answerqtn),
        // Answer(_answerqtn),
        // Answer(_answerqtn),
        // RaisedButton(child: Text('Blue'),onPressed: _answerqtn,),
        // RaisedButton(child: Text('Red'),onPressed: _answerqtn,),
        // RaisedButton(child: Text('Black'),onPressed: _answerqtn,),

      :Result(_totalScore,_reset),    //list of things

    ),);
  }
}
