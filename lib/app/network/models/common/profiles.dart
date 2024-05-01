class Profiles {
  Profiles({
    this.id,
    this.name,
    this.avatar,
    this.blurredAvatar,
    this.visibility,
    this.premium,
    this.city,
    this.country,
    this.favourite,
    this.description,
    this.roomId,
    this.lifePartnerDescription,
    this.quickViewAnswers,
    this.compatibility,
    this.answers,
    this.contactTimes,});

  Profiles.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    avatar = json['avatar'];
    blurredAvatar = json['blurred_avatar'];
    visibility = json['visibility'];
    premium = json['premium'];
    city = json['city'] != null ? City.fromJson(json['city']) : null;
    country = json['country'] != null ? Country.fromJson(json['country']) : null;
    favourite = json['favourite'];
    description = json['description'];
    roomId = json['room_id'];
    lifePartnerDescription = json['life_partner_description'];
    if (json['quick_view_answers'] != null) {
      quickViewAnswers = [];
      json['quick_view_answers'].forEach((v) {
        quickViewAnswers?.add(QuickViewAnswers.fromJson(v));
      });
    }
    compatibility = json['compatibility'] != null ? Compatibility.fromJson(json['compatibility']) : null;
    if (json['answers'] != null) {
      answers = [];
      json['answers'].forEach((v) {
        answers?.add(Answers.fromJson(v));
      });
    }
    if (json['contact_times'] != null) {
      contactTimes = [];
      json['contact_times'].forEach((v) {
        contactTimes?.add(ContactTimes.fromJson(v));
      });
    }
  }
  num? id;
  String? name;
  String? avatar;
  num? blurredAvatar;
  num? visibility;
  num? premium;
  City? city;
  Country? country;
  num? favourite;
  num? roomId;
  String? description;
  String? lifePartnerDescription;
  List<QuickViewAnswers>? quickViewAnswers;
  Compatibility? compatibility;
  List<Answers>? answers;
  List<ContactTimes>? contactTimes;
  Profiles copyWith({  num? id,
    String? name,
    String? avatar,
    num? blurredAvatar,
    num? visibility,
    num? premium,
    City? city,
    Country? country,
    num? favourite,
    num? roomId,
    String? description,
    String? referralCode,
    String? lifePartnerDescription,
    List<QuickViewAnswers>? quickViewAnswers,
    Compatibility? compatibility,
    List<Answers>? answers,
    List<ContactTimes>? contactTimes,
  }) => Profiles(  id: id ?? this.id,
    name: name ?? this.name,
    avatar: avatar ?? this.avatar,
    blurredAvatar: blurredAvatar ?? this.blurredAvatar,
    visibility: visibility ?? this.visibility,
    premium: premium ?? this.premium,
    city: city ?? this.city,
    country: country ?? this.country,
    favourite: favourite ?? this.favourite,
    roomId: roomId ?? this.roomId,
    description: description ?? this.description,
    lifePartnerDescription: lifePartnerDescription ?? this.lifePartnerDescription,
    quickViewAnswers: quickViewAnswers ?? this.quickViewAnswers,
    compatibility: compatibility ?? this.compatibility,
    answers: answers ?? this.answers,
    contactTimes: contactTimes ?? this.contactTimes,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['avatar'] = avatar;
    map['blurred_avatar'] = blurredAvatar;
    map['visibility'] = visibility;
    map['premium'] = premium;
    if (city != null) {
      map['city'] = city?.toJson();
    }
    if (country != null) {
      map['country'] = country?.toJson();
    }
    map['favourite'] = favourite;
    map['room_id'] = roomId;
    map['description'] = description;
    map['life_partner_description'] = lifePartnerDescription;
    if (quickViewAnswers != null) {
      map['quick_view_answers'] = quickViewAnswers?.map((v) => v.toJson()).toList();
    }
    if (compatibility != null) {
      map['compatibility'] = compatibility?.toJson();
    }
    if (answers != null) {
      map['answers'] = answers?.map((v) => v.toJson()).toList();
    }
    if (contactTimes != null) {
      map['contact_times'] = contactTimes?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 3
/// time : "10:10:00"

class ContactTimes {
  ContactTimes({
    this.id,
    this.time,});

  ContactTimes.fromJson(dynamic json) {
    id = json['id'];
    time = json['time'];
  }
  num? id;
  String? time;
  ContactTimes copyWith({  num? id,
    String? time,
  }) => ContactTimes(  id: id ?? this.id,
    time: time ?? this.time,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['time'] = time;
    return map;
  }

}

/// question : "My job level"
/// answer : "Student"

class Answers {
  Answers({
    this.question,
    this.answer,});

  Answers.fromJson(dynamic json) {
    question = json['question'];
    answer = json['answer'];
  }
  String? question;
  String? answer;
  Answers copyWith({  String? question,
    String? answer,
  }) => Answers(  question: question ?? this.question,
    answer: answer ?? this.answer,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['question'] = question;
    map['answer'] = answer;
    return map;
  }

}

/// id : 1
/// name : "Saudi Arabia"
/// flag : "https://saada-app.com/storage/images/countries/sa.png"

class Country {
  Country({
    this.id,
    this.name,
    this.flag,});

  Country.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    flag = json['flag'];
  }
  num? id;
  String? name;
  String? flag;
  Country copyWith({  num? id,
    String? name,
    String? flag,
  }) => Country(  id: id ?? this.id,
    name: name ?? this.name,
    flag: flag ?? this.flag,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['flag'] = flag;
    return map;
  }

}

/// id : 1
/// name : "Riyadh"

class City {
  City({
    this.id,
    this.name,});

  City.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }
  num? id;
  String? name;
  City copyWith({  num? id,
    String? name,
  }) => City(  id: id ?? this.id,
    name: name ?? this.name,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }
}

/// percentage : 20
/// answers : [{"question_id":1,"answer_id":1},{"question_id":2,"answer_id":6},{"question_id":3,"answer_id":9},{"question_id":4,"answer_id":12},{"question_id":5,"answer_id":16}]

class Compatibility {
  Compatibility({
    this.percentage,
    this.answers,});

  Compatibility.fromJson(dynamic json) {
    percentage = json['percentage'];
    if (json['answers'] != null) {
      answers = [];
      json['answers'].forEach((v) {
        answers?.add(AnswersCompatibility.fromJson(v));
      });
    }
  }
  num? percentage;
  List<AnswersCompatibility>? answers;
  Compatibility copyWith({  num? percentage,
    List<AnswersCompatibility>? answers,
  }) => Compatibility(  percentage: percentage ?? this.percentage,
    answers: answers ?? this.answers,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['percentage'] = percentage;
    if (answers != null) {
      map['answers'] = answers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// question_id : 1
/// answer_id : 1

class AnswersCompatibility {
  AnswersCompatibility({
    this.questionId,
    this.answerId,});

  AnswersCompatibility.fromJson(dynamic json) {
    questionId = json['question_id'];
    answerId = json['answer_id'];
  }
  num? questionId;
  num? answerId;
  AnswersCompatibility copyWith({  num? questionId,
    num? answerId,
  }) => AnswersCompatibility(  questionId: questionId ?? this.questionId,
    answerId: answerId ?? this.answerId,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['question_id'] = questionId;
    map['answer_id'] = answerId;
    return map;
  }
}

class QuickViewAnswers {
  QuickViewAnswers({
    this.answer,
    this.image,});

  QuickViewAnswers.fromJson(dynamic json) {
    answer = json['answer'];
    image = json['image'];
  }
  String? answer;
  String? image;
  QuickViewAnswers copyWith({  String? answer,
    String? image,
  }) => QuickViewAnswers(  answer: answer ?? this.answer,
    image: image ?? this.image,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['answer'] = answer;
    map['image'] = image;
    return map;
  }

}
