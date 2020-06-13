import 'package:entrancexam_v1/BlocsPattern/QuestionsOptionsBloc/questionsoptions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Data/Repository/questionsOptionsRepository.dart';
import 'Presentation/Pages/examPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (context) => QuestionsoptionsBloc(repository: QusestionOptionsRepositoryImpl()),
        child: ExamPage()),
    );
  }
}

