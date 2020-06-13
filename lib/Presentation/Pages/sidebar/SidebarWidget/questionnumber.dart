import 'package:entrancexam_v1/BlocsPattern/QuestionsOptionsBloc/questionsoptions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionNumbers extends StatelessWidget {
  const QuestionNumbers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right:15,left: 30,top: 5),
      child: GridView.count(
        crossAxisCount: MediaQuery.of(context).size.width >= 1400? 6: 5,
        mainAxisSpacing: 30,
        crossAxisSpacing:20,
        children: List.generate(30, (index) {
          
          return   GestureDetector(
            onTap: (){
                BlocProvider.of<QuestionsoptionsBloc>(context).add(FetchQuestionsOptions(index: index));
            },
                
                child: Container(
                
                // height: 10,
                // width : 10,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius : BorderRadius.circular(5),
                 gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors:[
                             Color(0xffFFFFFF),
                             Color(0xffE9E9E9)
                           ] ),
                ),
                child: Center(
                  child: Text('${index+1}',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                        color: Colors.black,
                    ),
                  ),
                ),
              ),
          );
        })
        ),
    );
  }
}