/// intro_1 : {"title":"intro_1_title_ar","description":"intro_1_description_ar"}
/// intro_2 : {"title":"intro_2_title_ar","description":"intro_2_description_ar"}
/// intro_3 : {"title":"intro_3_title_ar","description":"intro_3_description_ar"}

class IntroModel {
  IntroModel({
      this.intro1, 
      this.intro2, 
      this.intro3,});

  IntroModel.fromJson(dynamic json) {
    intro1 = json['intro_1'] != null ? Intro1.fromJson(json['intro_1']) : null;
    intro2 = json['intro_2'] != null ? Intro2.fromJson(json['intro_2']) : null;
    intro3 = json['intro_3'] != null ? Intro3.fromJson(json['intro_3']) : null;
  }
  Intro1? intro1;
  Intro2? intro2;
  Intro3? intro3;
IntroModel copyWith({  Intro1? intro1,
  Intro2? intro2,
  Intro3? intro3,
}) => IntroModel(  intro1: intro1 ?? this.intro1,
  intro2: intro2 ?? this.intro2,
  intro3: intro3 ?? this.intro3,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (intro1 != null) {
      map['intro_1'] = intro1?.toJson();
    }
    if (intro2 != null) {
      map['intro_2'] = intro2?.toJson();
    }
    if (intro3 != null) {
      map['intro_3'] = intro3?.toJson();
    }
    return map;
  }

}

/// title : "intro_3_title_ar"
/// description : "intro_3_description_ar"

class Intro3 {
  Intro3({
      this.title, 
      this.description,});

  Intro3.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
  }
  String? title;
  String? description;
Intro3 copyWith({  String? title,
  String? description,
}) => Intro3(  title: title ?? this.title,
  description: description ?? this.description,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    return map;
  }

}

/// title : "intro_2_title_ar"
/// description : "intro_2_description_ar"

class Intro2 {
  Intro2({
      this.title, 
      this.description,});

  Intro2.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
  }
  String? title;
  String? description;
Intro2 copyWith({  String? title,
  String? description,
}) => Intro2(  title: title ?? this.title,
  description: description ?? this.description,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    return map;
  }

}

/// title : "intro_1_title_ar"
/// description : "intro_1_description_ar"

class Intro1 {
  Intro1({
      this.title, 
      this.description,});

  Intro1.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
  }
  String? title;
  String? description;
Intro1 copyWith({  String? title,
  String? description,
}) => Intro1(  title: title ?? this.title,
  description: description ?? this.description,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    return map;
  }

}