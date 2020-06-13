import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entrancexam_v1/Data/Models/questionsOptionsModel.dart';
import 'package:entrancexam_v1/Data/Repository/questionsOptionsRepository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'questionsoptions_event.dart';
part 'questionsoptions_state.dart';

class QuestionsoptionsBloc extends Bloc<QuestionsoptionsEvent, QuestionsoptionsState> {

  QusestionOptionsRepository repository;
  QuestionsoptionsBloc({@required this.repository});

  @override
  QuestionsoptionsState get initialState => QuestionsoptionsInitial();

  @override
  Stream<QuestionsoptionsState> mapEventToState(
    QuestionsoptionsEvent event,
  ) async* {
    if(event is FetchQuestionsOptions){
      try{
        yield QuestionsoptionsLoading();
        List<Questions> questions = await repository.getquestions();
        yield QuestionsoptionsLoaded(
          questionsOptions: questions[event.index]
          );
      }catch(e){
        yield QuestionsoptionsError();
      }
    }

  }
}
