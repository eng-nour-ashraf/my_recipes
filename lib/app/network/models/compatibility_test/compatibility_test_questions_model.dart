/// questions : [{"id":1,"question":"التعبير عن الغضب","answers_count":1,"type":1,"answers":[{"id":1,"value":"انا كثير الغضب"},{"id":2,"value":"انا قليل العصبية أحيانا"},{"id":3,"value":"انا قليل الغضب"},{"id":4,"value":"أخري"}]},{"id":2,"question":"الإساءة والمسامحة","answers_count":1,"type":1,"answers":[{"id":5,"value":"ارضي وأسامح بسرعة"},{"id":6,"value":"لا أرضي ولا أسامح بسرعة"},{"id":7,"value":"أخرى"}]},{"id":3,"question":"النظام والفوضي","answers_count":1,"type":1,"answers":[{"id":8,"value":"انا منظم فس وقتي وغرفتي"},{"id":9,"value":"انا مهمل وغير منظم"},{"id":10,"value":"أخرى"}]},{"id":4,"question":"مكان السكن بعد الزواج","answers_count":1,"type":1,"answers":[{"id":11,"value":"السكن مع اهل الزوج في بيتهم"},{"id":12,"value":"السكن مع اهل الزوجة في بيتهم"},{"id":13,"value":"السكن بمسكن مستقل"}]},{"id":5,"question":"توقع شكل العلاقة بين الزوجة وآهل الزوج","answers_count":1,"type":1,"answers":[{"id":14,"value":"علاقة قوية وتواصل شبه يومي"},{"id":15,"value":"علاقة متوسطة وتواصل أسبوعي او شهري"},{"id":16,"value":"علاقة رسمية والتواصل في المناسبات"},{"id":17,"value":"عدم وجود علاقة والحرص علي الابتعاد عنهم"}]}]

class CompatibilityTestQuestionsModel {
  CompatibilityTestQuestionsModel({
      this.questions,});

  CompatibilityTestQuestionsModel.fromJson(dynamic json) {
    if (json['questions'] != null) {
      questions = [];
      json['questions'].forEach((v) {
        questions?.add(Questions.fromJson(v));
      });
    }
  }
  List<Questions>? questions;
CompatibilityTestQuestionsModel copyWith({  List<Questions>? questions,
}) => CompatibilityTestQuestionsModel(  questions: questions ?? this.questions,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (questions != null) {
      map['questions'] = questions?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// question : "التعبير عن الغضب"
/// answers_count : 1
/// type : 1
/// answers : [{"id":1,"value":"انا كثير الغضب"},{"id":2,"value":"انا قليل العصبية أحيانا"},{"id":3,"value":"انا قليل الغضب"},{"id":4,"value":"أخري"}]

class Questions {
  Questions({
      this.id, 
      this.question, 
      this.answersCount, 
      this.type, 
      this.answers,});

  Questions.fromJson(dynamic json) {
    id = json['id'];
    question = json['question'];
    answersCount = json['answers_count'];
    type = json['type'];
    if (json['answers'] != null) {
      answers = [];
      json['answers'].forEach((v) {
        answers?.add(AnswersTest.fromJson(v));
      });
    }
  }
  num? id;
  String? question;
  num? answersCount;
  num? type;
  List<AnswersTest>? answers;
Questions copyWith({  num? id,
  String? question,
  num? answersCount,
  num? type,
  List<AnswersTest>? answers,
}) => Questions(  id: id ?? this.id,
  question: question ?? this.question,
  answersCount: answersCount ?? this.answersCount,
  type: type ?? this.type,
  answers: answers ?? this.answers,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['question'] = question;
    map['answers_count'] = answersCount;
    map['type'] = type;
    if (answers != null) {
      map['answers'] = answers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// value : "انا كثير الغضب"

class AnswersTest {
  AnswersTest({
      this.id, 
      this.value,});

  AnswersTest.fromJson(dynamic json) {
    id = json['id'];
    value = json['value'];
  }
  num? id;
  String? value;
  AnswersTest copyWith({  num? id,
  String? value,
}) => AnswersTest(  id: id ?? this.id,
  value: value ?? this.value,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['value'] = value;
    return map;
  }

}