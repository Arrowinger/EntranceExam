part of 'questionsoptions_bloc.dart';

abstract class QuestionsoptionsState extends Equatable {
  const QuestionsoptionsState();
}

class QuestionsoptionsInitial extends QuestionsoptionsState {
  @override
  List<Object> get props => [];
}


class QuestionsoptionsLoading extends QuestionsoptionsState {
  @override
  List<Object> get props => [];
}

class QuestionsoptionsLoaded extends QuestionsoptionsState {
  final Questions questionsOptions;
  QuestionsoptionsLoaded({@required this.questionsOptions});
  @override
  List<Object> get props => [];
}

class QuestionsoptionsError extends QuestionsoptionsState {
  @override
  List<Object> get props => [];
}

