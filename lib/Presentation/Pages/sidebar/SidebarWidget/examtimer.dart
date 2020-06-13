import 'package:flutter/material.dart';

class ExamTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle timeStyle = TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,

                           );
    return Container(
      height: 80.0,
      margin: const EdgeInsets.only(top:25.0,left: 18.0,right: 18.0),
      width:  MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
         color: Colors.black54,
         borderRadius : BorderRadius.circular(20),
      ),
     
     child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
          SizedBox(
            child: Text('1',style:timeStyle),
          ),
          SizedBox(
            child: Text(':',style:timeStyle),
          ),
          SizedBox(
            child:Text('30',style:timeStyle),
          ),
          SizedBox(width: 10.0,),
          SizedBox(
            child: Text('Hr',style:timeStyle),
          ),

       ],
       ),
    );
  }
}