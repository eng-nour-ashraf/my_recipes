/// pagination : {"total":1,"count":1,"per_page":15,"next_page_url":"","perv_page_url":"","current_page":1,"total_pages":1}
/// engagement_orders : [{"id":1,"name":"Aquila Watts","avatar":"https://saada-app.com/storage/images/engagement_orders/17103043619276768.png","city":{"id":4,"name":"Alexandria"},"country":{"id":2,"name":"Egypt","flag":"https://saada-app.com/storage/images/countries/eg.png"},"description":"The user did not write a description","life_partner_description":"The user did not write a description","quick_view_answers":[{"answer":"33","image":"https://saada-app.com/storage/images/questions/17043247287977636.png"},{"answer":"189","image":"https://saada-app.com/storage/images/questions/17043247769905403.png"},{"answer":"Employee","image":"https://saada-app.com/storage/images/questions/17055093478929900.png"},{"answer":"muslim","image":"https://saada-app.com/storage/images/questions/17055097523653844.png"}],"compatibility":{"percentage":20,"answers":[{"question_id":1,"answer_id":1},{"question_id":2,"answer_id":6},{"question_id":3,"answer_id":9},{"question_id":4,"answer_id":12},{"question_id":5,"answer_id":16}]},"answers":[{"question":"My educational level","answer":"Scientist"},{"question":"hijab","answer":"hijab"},{"question":"?do you smoke","answer":"no"}],"extra_questions":[{"question":"Atque ut voluptatem","answer":"Et nesciunt dolore"},{"question":"Nam modi eos proide","answer":"Placeat iusto quae"}]}]

class EngagementOrdersModel {
  EngagementOrdersModel({
      this.pagination, 
      this.engagementOrders,});

  EngagementOrdersModel.fromJson(dynamic json) {
    pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
    if (json['engagement_orders'] != null) {
      engagementOrders = [];
      json['engagement_orders'].forEach((v) {
        engagementOrders?.add(EngagementOrders.fromJson(v));
      });
    }
  }
  Pagination? pagination;
  List<EngagementOrders>? engagementOrders;
EngagementOrdersModel copyWith({  Pagination? pagination,
  List<EngagementOrders>? engagementOrders,
}) => EngagementOrdersModel(  pagination: pagination ?? this.pagination,
  engagementOrders: engagementOrders ?? this.engagementOrders,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (pagination != null) {
      map['pagination'] = pagination?.toJson();
    }
    if (engagementOrders != null) {
      map['engagement_orders'] = engagementOrders?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// name : "Aquila Watts"
/// avatar : "https://saada-app.com/storage/images/engagement_orders/17103043619276768.png"
/// city : {"id":4,"name":"Alexandria"}
/// country : {"id":2,"name":"Egypt","flag":"https://saada-app.com/storage/images/countries/eg.png"}
/// description : "The user did not write a description"
/// life_partner_description : "The user did not write a description"
/// quick_view_answers : [{"answer":"33","image":"https://saada-app.com/storage/images/questions/17043247287977636.png"},{"answer":"189","image":"https://saada-app.com/storage/images/questions/17043247769905403.png"},{"answer":"Employee","image":"https://saada-app.com/storage/images/questions/17055093478929900.png"},{"answer":"muslim","image":"https://saada-app.com/storage/images/questions/17055097523653844.png"}]
/// compatibility : {"percentage":20,"answers":[{"question_id":1,"answer_id":1},{"question_id":2,"answer_id":6},{"question_id":3,"answer_id":9},{"question_id":4,"answer_id":12},{"question_id":5,"answer_id":16}]}
/// answers : [{"question":"My educational level","answer":"Scientist"},{"question":"hijab","answer":"hijab"},{"question":"?do you smoke","answer":"no"}]
/// extra_questions : [{"question":"Atque ut voluptatem","answer":"Et nesciunt dolore"},{"question":"Nam modi eos proide","answer":"Placeat iusto quae"}]

class EngagementOrders {
  EngagementOrders({
      this.id, 
      this.name, 
      this.avatar, 
      this.image,
      this.city,
      this.country, 
      this.description, 
      this.lifePartnerDescription, 
      this.quickViewAnswers, 
      this.compatibility, 
      this.answers, 
      this.extraQuestions,});

  EngagementOrders.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    avatar = json['avatar'];
    image = json['image'];
    city = json['city'] != null ? City.fromJson(json['city']) : null;
    country = json['country'] != null ? Country.fromJson(json['country']) : null;
    description = json['description'];
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
    if (json['extra_questions'] != null) {
      extraQuestions = [];
      json['extra_questions'].forEach((v) {
        extraQuestions?.add(ExtraQuestions.fromJson(v));
      });
    }
  }
  num? id;
  String? name;
  String? avatar;
  String? image;
  City? city;
  Country? country;
  String? description;
  String? lifePartnerDescription;
  List<QuickViewAnswers>? quickViewAnswers;
  Compatibility? compatibility;
  List<Answers>? answers;
  List<ExtraQuestions>? extraQuestions;
EngagementOrders copyWith({  num? id,
  String? name,
  String? avatar,
  String? image,
  City? city,
  Country? country,
  String? description,
  String? lifePartnerDescription,
  List<QuickViewAnswers>? quickViewAnswers,
  Compatibility? compatibility,
  List<Answers>? answers,
  List<ExtraQuestions>? extraQuestions,
}) => EngagementOrders(  id: id ?? this.id,
  name: name ?? this.name,
  avatar: avatar ?? this.avatar,
  image: image ?? this.image,
  city: city ?? this.city,
  country: country ?? this.country,
  description: description ?? this.description,
  lifePartnerDescription: lifePartnerDescription ?? this.lifePartnerDescription,
  quickViewAnswers: quickViewAnswers ?? this.quickViewAnswers,
  compatibility: compatibility ?? this.compatibility,
  answers: answers ?? this.answers,
  extraQuestions: extraQuestions ?? this.extraQuestions,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['avatar'] = avatar;
    map['image'] = image;
    if (city != null) {
      map['city'] = city?.toJson();
    }
    if (country != null) {
      map['country'] = country?.toJson();
    }
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
    if (extraQuestions != null) {
      map['extra_questions'] = extraQuestions?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// question : "Atque ut voluptatem"
/// answer : "Et nesciunt dolore"

class ExtraQuestions {
  ExtraQuestions({
      this.question, 
      this.answer,});

  ExtraQuestions.fromJson(dynamic json) {
    question = json['question'];
    answer = json['answer'];
  }
  String? question;
  String? answer;
ExtraQuestions copyWith({  String? question,
  String? answer,
}) => ExtraQuestions(  question: question ?? this.question,
  answer: answer ?? this.answer,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['question'] = question;
    map['answer'] = answer;
    return map;
  }

}

/// question : "My educational level"
/// answer : "Scientist"

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
        answers?.add(CompatibilityAnswers.fromJson(v));
      });
    }
  }
  num? percentage;
  List<CompatibilityAnswers>? answers;
Compatibility copyWith({  num? percentage,
  List<CompatibilityAnswers>? answers,
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

class CompatibilityAnswers {
  CompatibilityAnswers({
      this.questionId, 
      this.answerId,});

  CompatibilityAnswers.fromJson(dynamic json) {
    questionId = json['question_id'];
    answerId = json['answer_id'];
  }
  num? questionId;
  num? answerId;
  CompatibilityAnswers copyWith({  num? questionId,
  num? answerId,
}) => CompatibilityAnswers(  questionId: questionId ?? this.questionId,
  answerId: answerId ?? this.answerId,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['question_id'] = questionId;
    map['answer_id'] = answerId;
    return map;
  }

}

/// answer : "33"
/// image : "https://saada-app.com/storage/images/questions/17043247287977636.png"

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

/// id : 2
/// name : "Egypt"
/// flag : "https://saada-app.com/storage/images/countries/eg.png"

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

/// id : 4
/// name : "Alexandria"

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

/// total : 1
/// count : 1
/// per_page : 15
/// next_page_url : ""
/// perv_page_url : ""
/// current_page : 1
/// total_pages : 1

class Pagination {
  Pagination({
      this.total, 
      this.count, 
      this.perPage, 
      this.nextPageUrl, 
      this.pervPageUrl, 
      this.currentPage, 
      this.totalPages,});

  Pagination.fromJson(dynamic json) {
    total = json['total'];
    count = json['count'];
    perPage = json['per_page'];
    nextPageUrl = json['next_page_url'];
    pervPageUrl = json['perv_page_url'];
    currentPage = json['current_page'];
    totalPages = json['total_pages'];
  }
  num? total;
  num? count;
  num? perPage;
  String? nextPageUrl;
  String? pervPageUrl;
  num? currentPage;
  num? totalPages;
Pagination copyWith({  num? total,
  num? count,
  num? perPage,
  String? nextPageUrl,
  String? pervPageUrl,
  num? currentPage,
  num? totalPages,
}) => Pagination(  total: total ?? this.total,
  count: count ?? this.count,
  perPage: perPage ?? this.perPage,
  nextPageUrl: nextPageUrl ?? this.nextPageUrl,
  pervPageUrl: pervPageUrl ?? this.pervPageUrl,
  currentPage: currentPage ?? this.currentPage,
  totalPages: totalPages ?? this.totalPages,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['count'] = count;
    map['per_page'] = perPage;
    map['next_page_url'] = nextPageUrl;
    map['perv_page_url'] = pervPageUrl;
    map['current_page'] = currentPage;
    map['total_pages'] = totalPages;
    return map;
  }

}