/// genders : [{"id":1,"name":"Male"},{"id":2,"name":"Female"}]
/// nationalities : [{"id":2,"name":"Egyptian"},{"id":3,"name":"Emirate"},{"id":4,"name":"Palestinian"},{"id":1,"name":"Saudi"}]
/// questions : [{"id":1,"question":"My job level","answers_count":1,"answer_type":2,"answers":[{"id":1,"value":"Student"},{"id":2,"value":"Employee"},{"id":3,"value":"High rank employee"},{"id":4,"value":"Manager"},{"id":5,"value":"Unemployed"},{"id":6,"value":"Freelancer"},{"id":7,"value":"Other"}]},{"id":2,"question":"My Age","answers_count":1,"answer_type":1,"answers":[]},{"id":3,"question":"My educational level","answers_count":1,"answer_type":2,"answers":[{"id":8,"value":"High school"},{"id":9,"value":"Intermediate education / institute"},{"id":10,"value":"University degree"},{"id":11,"value":"Master"},{"id":12,"value":"PhD"},{"id":13,"value":"Scientist"}]},{"id":4,"question":"My height","answers_count":1,"answer_type":1,"answers":[]}]

class RegisterDataModel {
  RegisterDataModel({
      this.genders, 
      this.nationalities, 
      this.questions,});

  RegisterDataModel.fromJson(dynamic json) {
    if (json['genders'] != null) {
      genders = [];
      json['genders'].forEach((v) {
        genders?.add(Genders.fromJson(v));
      });
    }
    if (json['nationalities'] != null) {
      nationalities = [];
      json['nationalities'].forEach((v) {
        nationalities?.add(Nationalities.fromJson(v));
      });
    }
    if (json['questions'] != null) {
      questions = [];
      json['questions'].forEach((v) {
        questions?.add(Questions.fromJson(v));
      });
    }
  }
  List<Genders>? genders;
  List<Nationalities>? nationalities;
  List<Questions>? questions;
RegisterDataModel copyWith({  List<Genders>? genders,
  List<Nationalities>? nationalities,
  List<Questions>? questions,
}) => RegisterDataModel(  genders: genders ?? this.genders,
  nationalities: nationalities ?? this.nationalities,
  questions: questions ?? this.questions,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (genders != null) {
      map['genders'] = genders?.map((v) => v.toJson()).toList();
    }
    if (nationalities != null) {
      map['nationalities'] = nationalities?.map((v) => v.toJson()).toList();
    }
    if (questions != null) {
      map['questions'] = questions?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// question : "My job level"
/// answers_count : 1
/// answer_type : 2
/// answers : [{"id":1,"value":"Student"},{"id":2,"value":"Employee"},{"id":3,"value":"High rank employee"},{"id":4,"value":"Manager"},{"id":5,"value":"Unemployed"},{"id":6,"value":"Freelancer"},{"id":7,"value":"Other"}]

class Questions {
  Questions({
      this.id, 
      this.question, 
      this.answersCount, 
      this.answerType, 
      this.answers,});

  Questions.fromJson(dynamic json) {
    id = json['id'];
    question = json['question'];
    answersCount = json['answers_count'];
    answerType = json['answer_type'];
    if (json['answers'] != null) {
      answers = [];
      json['answers'].forEach((v) {
        answers?.add(Answers.fromJson(v));
      });
    }
  }
  num? id;
  String? question;
  num? answersCount;
  num? answerType;
  List<Answers>? answers;
Questions copyWith({  num? id,
  String? question,
  num? answersCount,
  num? answerType,
  List<Answers>? answers,
}) => Questions(  id: id ?? this.id,
  question: question ?? this.question,
  answersCount: answersCount ?? this.answersCount,
  answerType: answerType ?? this.answerType,
  answers: answers ?? this.answers,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['question'] = question;
    map['answers_count'] = answersCount;
    map['answer_type'] = answerType;
    if (answers != null) {
      map['answers'] = answers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// value : "Student"

class Answers {
  Answers({
      this.id, 
      this.value,});

  Answers.fromJson(dynamic json) {
    id = json['id'];
    value = json['value'];
  }
  num? id;
  String? value;
Answers copyWith({  num? id,
  String? value,
}) => Answers(  id: id ?? this.id,
  value: value ?? this.value,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['value'] = value;
    return map;
  }

}

/// id : 2
/// name : "Egyptian"

class Nationalities {
  Nationalities({
      this.id, 
      this.name,});

  Nationalities.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }
  num? id;
  String? name;
Nationalities copyWith({  num? id,
  String? name,
}) => Nationalities(  id: id ?? this.id,
  name: name ?? this.name,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

}

/// id : 1
/// name : "Male"

class Genders {
  Genders({
      this.id, 
      this.name,});

  Genders.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }
  num? id;
  String? name;
Genders copyWith({  num? id,
  String? name,
}) => Genders(  id: id ?? this.id,
  name: name ?? this.name,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

}