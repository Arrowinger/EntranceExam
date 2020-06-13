import 'package:flutter/material.dart';

class AnswerType extends StatelessWidget {
  const AnswerType({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text('Answer Type',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        Row(
          children: <Widget>[
            //! For not seen
            Flexible(
              child: Container(
                child: ListTile(
                  leading: Container(
                    height: 37,
                    width : 37,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius : BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors:[
                           Color(0xffFFFFFF),
                           Color(0xffE9E9E9)
                         ] ),
                    ),
                    child: Center(
                      child: Text('1',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w200
                        ),
                      ),
                    ),
                  ),
                  title:  Text('Not Seen',
                    style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300
                        ),
                  ),
                ),
              ),
            ),

            //! for not answer
            Flexible(
              child: Container(
                child: ListTile(
                  leading: Container(
                    height: 37,
                    width : 37,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius : BorderRadius.circular(10),
                      color: Colors.redAccent,
                    ),
                    child: Center(
                      child: Text('2',
                       style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w200
                          ),),
                    ),
                  ),
                  title:  Text('Not Answer',
                   style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300
                        ),),
                ),
              ),
            ),
          ],
        ),

        Row(
          children: <Widget>[
             //! For answer
            Flexible(
              child: Container(
                child: ListTile(
                  leading: Container(
                    height: 37,
                    width : 37,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius : BorderRadius.circular(10),
                      color: Colors.green
                    ),
                    child: Center(
                      child: Text('3',
                       style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),),
                    ),
                  ),
                  title:  Text('Answers',
                   style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300
                        ),),
                ),
              ),
            ),

            //! FOR MARKED
            Flexible(
              child: Container(
                child: ListTile(
                  leading: Container(
                    height: 37,
                    width : 37,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius : BorderRadius.circular(10),
                      color: Colors.purple
                    ),
                    child: Center(
                      child: Text('4',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),),
                    ),
                  ),
                  title:  Text('Marked',
                   style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300
                        ),),
                ),
              ),
            ),
          ],
        ),

        //!Marked but not answerd
         Flexible(
              child: Container(
                child: ListTile(
                  leading: Container(
                    height: 37,
                    width : 37,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius : BorderRadius.circular(10),
                      color: Colors.blueAccent
                    ),
                    child: Center(
                      child: Text('5',
                       style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),),
                    ),
                  ),
                  title:  Text(' Marked  but not answerd',
                   style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),),
                ),
              ),
            ),
      ],
    );
  }
}