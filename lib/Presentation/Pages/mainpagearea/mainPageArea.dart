import 'package:entrancexam_v1/BlocsPattern/QuestionsOptionsBloc/questionsoptions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'mainpageareaWidgets/imagecontainer.dart';
import 'mainpageareaWidgets/optionscontainer.dart';
import 'mainpageareaWidgets/questions.dart';

class MainPageArea extends StatelessWidget {
  const MainPageArea({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return  BlocBuilder<QuestionsoptionsBloc,QuestionsoptionsState>(
      builder: (context,state)  {
        if(state is QuestionsoptionsInitial){
          return Center(child: Text('Select a question'));
        } else if(state is QuestionsoptionsLoading){
          return Center(child:CircularProgressIndicator());
        } else if(state is QuestionsoptionsLoaded){
          return  SingleChildScrollView(
                        child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            flex: 2,
                          
                            child: QuestionsExam(questions: state.questionsOptions),
                          ),
                            Flexible(
                            flex: 2,
                            child: state.questionsOptions.quesImage != null ? ImageContainer(imageUrl: state.questionsOptions,): SizedBox(height: 300.0,)
                          ),
                            Flexible(
                            flex: 3,
                            child: OptionsContainer(options: state.questionsOptions,)
                          ),
                        
                          // SizedBox(height: 10,),
                          // Placeholder(fallbackHeight: 10,),
                          
                            
                          
                        ],
                      ),
                    ),
                  );
        }else{
          return Center(child:Text('No question is enterd'));
        }

      },
        
    );
  }
}