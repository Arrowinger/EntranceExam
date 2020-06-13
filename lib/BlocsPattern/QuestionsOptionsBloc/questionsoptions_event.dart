part of 'questionsoptions_bloc.dart';

abstract class QuestionsoptionsEvent extends Equatable {
  const QuestionsoptionsEvent();
}

class FetchQuestionsOptions extends QuestionsoptionsEvent{

  final int index;
  FetchQuestionsOptions({@required this.index});

  @override
  List<Object> get props => [index];

  
}