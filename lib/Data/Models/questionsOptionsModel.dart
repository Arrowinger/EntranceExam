
class QuestionsOptionsModel {
  List<Questions> questions;

  QuestionsOptionsModel({this.questions});

  QuestionsOptionsModel.fromJson(Map<String, dynamic> json) {
    if (json['questions'] != null) {
      questions = new List<Questions>();
      json['questions'].forEach((v) {
        questions.add(new Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.questions != null) {
      data['questions'] = this.questions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Questions {
  int id;
  int exam;
  String question;
  String quesImage;
  String option1;
  String option2;
  String option3;
  String option4;
  int correctOption;

  Questions(
      {this.id,
      this.exam,
      this.question,
      this.quesImage,
      this.option1,
      this.option2,
      this.option3,
      this.option4,
      this.correctOption});

  Questions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    exam = json['exam'];
    question = json['question'];
    quesImage = json['quesImage'];
    option1 = json['option1'];
    option2 = json['option2'];
    option3 = json['option3'];
    option4 = json['option4'];
    correctOption = json['correctOption'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['exam'] = this.exam;
    data['question'] = this.question;
    data['quesImage'] = this.quesImage;
    data['option1'] = this.option1;
    data['option2'] = this.option2;
    data['option3'] = this.option3;
    data['option4'] = this.option4;
    data['correctOption'] = this.correctOption;
    return data;
  }
}
