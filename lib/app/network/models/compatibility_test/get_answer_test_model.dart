/// answers : [{"question_id":1,"answer_id":1},{"question_id":2,"answer_id":5},{"question_id":3,"answer_id":8},{"question_id":4,"answer_id":11},{"question_id":5,"answer_id":14},{"question_id":6,"answer_id":18},{"question_id":7,"answer_id":22},{"question_id":8,"answer_id":25},{"question_id":9,"answer_id":28},{"question_id":10,"answer_id":30},{"question_id":11,"answer_id":32},{"question_id":12,"answer_id":34}]

class GetAnswerTestModel {
  GetAnswerTestModel({
      this.answers,});

  GetAnswerTestModel.fromJson(dynamic json) {
    if (json['answers'] != null) {
      answers = [];
      json['answers'].forEach((v) {
        answers?.add(Answers.fromJson(v));
      });
    }
  }
  List<Answers>? answers;
GetAnswerTestModel copyWith({  List<Answers>? answers,
}) => GetAnswerTestModel(  answers: answers ?? this.answers,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (answers != null) {
      map['answers'] = answers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// question_id : 1
/// answer_id : 1

class Answers {
  Answers({
      this.questionId, 
      this.answerId,});

  Answers.fromJson(dynamic json) {
    questionId = json['question_id'];
    answerId = json['answer_id'];
  }
  num? questionId;
  num? answerId;
Answers copyWith({  num? questionId,
  num? answerId,
}) => Answers(  questionId: questionId ?? this.questionId,
  answerId: answerId ?? this.answerId,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['question_id'] = questionId;
    map['answer_id'] = answerId;
    return map;
  }

}