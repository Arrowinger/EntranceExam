import 'package:flutter/material.dart';

import 'SidebarWidget/answertype.dart';
import 'SidebarWidget/examtimer.dart';
import 'SidebarWidget/questionnumber.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          ExamTimer(),
          Flexible(
            flex: 2,
            child: AnswerType(),
          ),
          SizedBox(height: 10,),
          Container(
            child: Text('Questions',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800
            ),
            ),
          ),
          Flexible(
            flex: 4,
            child: QuestionNumbers(),
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: 50.0,
              width: 200.0,
              child: RaisedButton(
                onPressed: (){},
                child: Text("Submit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25.0),),
              ),
            )
          ),
        ],
      ),
    );
  }
}