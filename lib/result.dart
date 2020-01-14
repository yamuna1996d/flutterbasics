import 'package:flutter/material.dart';
class Result extends StatelessWidget {
final int resultScore;
final Function resetHandler;

Result(this.resultScore,this.resetHandler);

String get resultPhrase{
  String resultText;
  if(resultScore <= 5){
    resultText='You are Awsome...I like it!';
  }
  else if(resultScore <= 15){
    resultText="Pretty Likeable";
  }
  else if(resultScore <= 20){
    resultText="You are Strange...!";
  }
  else{
    resultText='U r very Strange to me...!';
  }
  return resultText;
}

  @override
  Widget build(BuildContext context) {
    return  Center(child: Column(
      children: <Widget>[
        Text(resultPhrase,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,),
        ),
        FlatButton(child: Text('Restart Quiz...'),textColor: Colors.blue, onPressed:resetHandler ,)
      ],
    ),
    );
  }
}