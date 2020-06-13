
import 'dart:convert';


import 'package:entrancexam_v1/Data/Models/questionsOptionsModel.dart';
import 'package:http/http.dart' as http;
abstract class QusestionOptionsRepository{

  Future<List<Questions>> getquestions();

}

class QusestionOptionsRepositoryImpl implements QusestionOptionsRepository{
  @override
  Future<List<Questions>> getquestions() async {
   var response = await http.get( "https://clickxserver.herokuapp.com/api/v1/questionEnter/");
   if(response.statusCode == 200){
    //  var datas =json.decode(response.body);
    // print(response.body.substring(1,response.body.length-1));
     var rawdata = response.body.substring(1,response.body.length-1);
     var data =json.decode(rawdata);
    // print(data);
   //  print(QuestionsOptions.fromJson(datas));
     List<Questions> values = QuestionsOptionsModel.fromJson(data).questions;
    // print(values);
     return values;
   }else{
    // print('error');
     throw Exception();
   }
  }
  
}