import 'package:entrancexam_v1/Data/Models/questionsOptionsModel.dart';
import 'package:flutter/material.dart';

class QuestionsExam extends StatelessWidget {
  final Questions questions;
  const QuestionsExam({Key key,@required this.questions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:20,bottom: 20.0),
      color: Colors.white60,
      child: ListTile(
        leading: Text('${questions.id}.',
           style: TextStyle(
             fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        title: Text(questions.question,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
        ),

      )
      );
  }
}