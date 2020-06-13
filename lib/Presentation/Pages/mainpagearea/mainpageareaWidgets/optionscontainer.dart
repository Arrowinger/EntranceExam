import 'package:entrancexam_v1/BlocsPattern/QuestionsOptionsBloc/questionsoptions_bloc.dart';
import 'package:entrancexam_v1/Data/Models/questionsOptionsModel.dart';
import 'package:flutter/material.dart';


import 'options.dart';

class OptionsContainer extends StatelessWidget {
  final Questions options;
  const OptionsContainer({Key key,@required this.options}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      margin:  const EdgeInsets.only(left:70),
      
      child: Column(
         //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
             //!first row of the options
        
              Row(
                
                children: <Widget>[
                  Options(optionNumber: 'A', options: options.option1,),
                  Options(optionNumber: 'B', options: options.option2,),
                ],
              ),
                //!Second row of the options
                Row(
                children: <Widget>[
                  Options(optionNumber: 'C', options: options.option3,),
                  Options(optionNumber: 'D', options: options.option4,),
                  
                ],
              ),
                          
             Container(
                margin: const EdgeInsets.all(20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[

                   //! Previus Button
                   Container(
                     decoration: BoxDecoration(
                       gradient: LinearGradient(
                         begin: Alignment.topLeft,
                         end : Alignment.bottomRight,
                         colors:[
                           Color(0xffFFFFFF),
                           Color(0xffE9E9E9)
                         ] ),
                       borderRadius: BorderRadius.circular(20),
                       border: Border.all(),
                     ),
                     height: 50,
                     width: 200,
                     child: Center(
                       child: ListTile(
                         leading:Icon(Icons.arrow_back),
                         title: Text('Previous'),
                       ),
                     ),
                   ),
                   
                   //! Mark Button
                   Container(

                     decoration: BoxDecoration(
                       color:Colors.green.shade600,
                       borderRadius: BorderRadius.circular(20),
                       border: Border.all(),
                        // gradient: LinearGradient(
                        //  begin: Alignment.topLeft,
                        //  end : Alignment.bottomRight,
                        //  colors:[
                        //    Color(0xffFFFFFF),
                        //    Color(0xffE9E9E9)
                        //  ] ),

                     ),
                     height: 50,
                     width: 200,
                     child : Center(child: Text('Mark'))
                   ),

                   //! Next Button
                    Container(
                     decoration: BoxDecoration(
                       color:Colors.white70,
                       borderRadius: BorderRadius.circular(20),
                       border: Border.all(),
                        gradient: LinearGradient(
                         begin: Alignment.topCenter,
                         end : Alignment.bottomCenter,
                         colors:[
                           Color(0xffFFFFFF),
                           Color(0xffE9E9E9)
                         ] ),
                     ),
                     height: 50,
                     width: 200,
                     child: Center(
                       child: ListTile(
                         trailing:Icon(Icons.arrow_forward),
                         title: Text('Next'),
                       ),
                     ), 
                   ),

                 ]
               ),
             )
             
           ],
         ) 
    );
  }
}