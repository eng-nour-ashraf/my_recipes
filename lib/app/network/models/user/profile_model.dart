/// id : 14
/// name : "nour"
/// email : "xc@xc.com"
/// phone : "966000111222"
/// avatar : "https://saada-app.com/images/default.png"
/// status : 2
/// lang : "ar"
/// gender : 1
/// completed_profile : 1
/// new_account : 0
/// gift_plan : 0
/// city : {"id":1,"name":"الرياض"}
/// nationality : {"id":2,"name":"مصري/ة"}
/// notify_news_chats : 0
/// notify_news_chat_message : 1
/// notify_avatar_illustration : 0
/// notify_profile_viewers : 0
/// notify_new_emails : 1
/// visibility : 1
/// available : 0
/// token : "215|AaUTPm8bYv27VqlqTMNQ5osivci6cW2mQiGjTLBm14155979"
/// referral_code : ""
/// referral_count : 0
/// description : "new descriotion"
/// life_partner_description : "new partnar description"
/// description_accepted : 0
/// life_partner_description_accepted : 0
/// avatar_accepted : 0
/// plan : {"id":4,"image":"https://saada-app.com/storage/images/plans/default.png","name":"الباقة الذهبية","duration":"٦ شهور","price":"1999","features":["علامة مميزة وتعزيز الظهور","البحث بتفاصيل محددة","اختبار التوافق","استشارة مختص علاقات زوجية قبل او بعد الزواج","مساعدة الخاطبات حتي من خارج التطبيق لإيجاد شريك يناسبك حتي اربع مرات اي نوع زواج","التحدث مع الأعضاء"],"premium_account":1,"advanced_filter":1,"compatibility_test":1,"relation_specialist_consulting":1,"fiances_helping":1,"chatting":1}
/// compatibility_test : {"price":100,"is_free":1}
/// answers : [{"question_id":1,"answer_id":74,"answer_value":"مدير"},{"question_id":2,"answer_id":75,"answer_value":"33"},{"question_id":3,"answer_id":76,"answer_value":"شهادة جامعية"},{"question_id":4,"answer_id":77,"answer_value":"180"}]

class ProfileModel {
  ProfileModel({
      this.id, 
      this.name, 
      this.email, 
      this.phone, 
      this.avatar, 
      this.status, 
      this.lang, 
      this.gender, 
      this.completedProfile, 
      this.newAccount, 
      this.giftPlan, 
      this.city, 
      this.nationality, 
      this.notifyNewsChats, 
      this.notifyNewsChatMessage, 
      this.notifyAvatarIllustration, 
      this.notifyProfileViewers, 
      this.notifyNewEmails, 
      this.visibility, 
      this.available, 
      this.token, 
      this.referralCode, 
      this.referralCount, 
      this.description, 
      this.lifePartnerDescription, 
      this.descriptionAccepted, 
      this.lifePartnerDescriptionAccepted, 
      this.avatarAccepted, 
      this.plan, 
      this.compatibilityTest, 
      this.answers,});

  ProfileModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    avatar = json['avatar'];
    status = json['status'];
    lang = json['lang'];
    gender = json['gender'];
    completedProfile = json['completed_profile'];
    newAccount = json['new_account'];
    giftPlan = json['gift_plan'];
    city = json['city'] != null ? City.fromJson(json['city']) : null;
    nationality = json['nationality'] != null ? Nationality.fromJson(json['nationality']) : null;
    notifyNewsChats = json['notify_news_chats'];
    notifyNewsChatMessage = json['notify_news_chat_message'];
    notifyAvatarIllustration = json['notify_avatar_illustration'];
    notifyProfileViewers = json['notify_profile_viewers'];
    notifyNewEmails = json['notify_new_emails'];
    visibility = json['visibility'];
    available = json['available'];
    token = json['token'];
    referralCode = json['referral_code'];
    referralCount = json['referral_count'];
    description = json['description'];
    lifePartnerDescription = json['life_partner_description'];
    descriptionAccepted = json['description_accepted'];
    lifePartnerDescriptionAccepted = json['life_partner_description_accepted'];
    avatarAccepted = json['avatar_accepted'];
    plan = json['plan'] != null ? Plan.fromJson(json['plan']) : null;
    compatibilityTest = json['compatibility_test'] != null ? CompatibilityTest.fromJson(json['compatibility_test']) : null;
    if (json['answers'] != null) {
      answers = [];
      json['answers'].forEach((v) {
        answers?.add(Answers.fromJson(v));
      });
    }
  }
  num? id;
  String? name;
  String? email;
  String? phone;
  String? avatar;
  num? status;
  String? lang;
  num? gender;
  num? completedProfile;
  num? newAccount;
  num? giftPlan;
  City? city;
  Nationality? nationality;
  num? notifyNewsChats;
  num? notifyNewsChatMessage;
  num? notifyAvatarIllustration;
  num? notifyProfileViewers;
  num? notifyNewEmails;
  num? visibility;
  num? available;
  String? token;
  String? referralCode;
  num? referralCount;
  String? description;
  String? lifePartnerDescription;
  num? descriptionAccepted;
  num? lifePartnerDescriptionAccepted;
  num? avatarAccepted;
  Plan? plan;
  CompatibilityTest? compatibilityTest;
  List<Answers>? answers;
ProfileModel copyWith({  num? id,
  String? name,
  String? email,
  String? phone,
  String? avatar,
  num? status,
  String? lang,
  num? gender,
  num? completedProfile,
  num? newAccount,
  num? giftPlan,
  City? city,
  Nationality? nationality,
  num? notifyNewsChats,
  num? notifyNewsChatMessage,
  num? notifyAvatarIllustration,
  num? notifyProfileViewers,
  num? notifyNewEmails,
  num? visibility,
  num? available,
  String? token,
  String? referralCode,
  num? referralCount,
  String? description,
  String? lifePartnerDescription,
  num? descriptionAccepted,
  num? lifePartnerDescriptionAccepted,
  num? avatarAccepted,
  Plan? plan,
  CompatibilityTest? compatibilityTest,
  List<Answers>? answers,
}) => ProfileModel(  id: id ?? this.id,
  name: name ?? this.name,
  email: email ?? this.email,
  phone: phone ?? this.phone,
  avatar: avatar ?? this.avatar,
  status: status ?? this.status,
  lang: lang ?? this.lang,
  gender: gender ?? this.gender,
  completedProfile: completedProfile ?? this.completedProfile,
  newAccount: newAccount ?? this.newAccount,
  giftPlan: giftPlan ?? this.giftPlan,
  city: city ?? this.city,
  nationality: nationality ?? this.nationality,
  notifyNewsChats: notifyNewsChats ?? this.notifyNewsChats,
  notifyNewsChatMessage: notifyNewsChatMessage ?? this.notifyNewsChatMessage,
  notifyAvatarIllustration: notifyAvatarIllustration ?? this.notifyAvatarIllustration,
  notifyProfileViewers: notifyProfileViewers ?? this.notifyProfileViewers,
  notifyNewEmails: notifyNewEmails ?? this.notifyNewEmails,
  visibility: visibility ?? this.visibility,
  available: available ?? this.available,
  token: token ?? this.token,
  referralCode: referralCode ?? this.referralCode,
  referralCount: referralCount ?? this.referralCount,
  description: description ?? this.description,
  lifePartnerDescription: lifePartnerDescription ?? this.lifePartnerDescription,
  descriptionAccepted: descriptionAccepted ?? this.descriptionAccepted,
  lifePartnerDescriptionAccepted: lifePartnerDescriptionAccepted ?? this.lifePartnerDescriptionAccepted,
  avatarAccepted: avatarAccepted ?? this.avatarAccepted,
  plan: plan ?? this.plan,
  compatibilityTest: compatibilityTest ?? this.compatibilityTest,
  answers: answers ?? this.answers,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['phone'] = phone;
    map['avatar'] = avatar;
    map['status'] = status;
    map['lang'] = lang;
    map['gender'] = gender;
    map['completed_profile'] = completedProfile;
    map['new_account'] = newAccount;
    map['gift_plan'] = giftPlan;
    if (city != null) {
      map['city'] = city?.toJson();
    }
    if (nationality != null) {
      map['nationality'] = nationality?.toJson();
    }
    map['notify_news_chats'] = notifyNewsChats;
    map['notify_news_chat_message'] = notifyNewsChatMessage;
    map['notify_avatar_illustration'] = notifyAvatarIllustration;
    map['notify_profile_viewers'] = notifyProfileViewers;
    map['notify_new_emails'] = notifyNewEmails;
    map['visibility'] = visibility;
    map['available'] = available;
    map['token'] = token;
    map['referral_code'] = referralCode;
    map['referral_count'] = referralCount;
    map['description'] = description;
    map['life_partner_description'] = lifePartnerDescription;
    map['description_accepted'] = descriptionAccepted;
    map['life_partner_description_accepted'] = lifePartnerDescriptionAccepted;
    map['avatar_accepted'] = avatarAccepted;
    if (plan != null) {
      map['plan'] = plan?.toJson();
    }
    if (compatibilityTest != null) {
      map['compatibility_test'] = compatibilityTest?.toJson();
    }
    if (answers != null) {
      map['answers'] = answers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// question_id : 1
/// answer_id : 74
/// answer_value : "مدير"

class Answers {
  Answers({
      this.questionId, 
      this.answerId, 
      this.answerValue,});

  Answers.fromJson(dynamic json) {
    questionId = json['question_id'];
    answerId = json['answer_id'];
    answerValue = json['answer_value'];
  }
  num? questionId;
  num? answerId;
  String? answerValue;
Answers copyWith({  num? questionId,
  num? answerId,
  String? answerValue,
}) => Answers(  questionId: questionId ?? this.questionId,
  answerId: answerId ?? this.answerId,
  answerValue: answerValue ?? this.answerValue,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['question_id'] = questionId;
    map['answer_id'] = answerId;
    map['answer_value'] = answerValue;
    return map;
  }

}

/// price : 100
/// is_free : 1

class CompatibilityTest {
  CompatibilityTest({
      this.price, 
      this.isFree,});

  CompatibilityTest.fromJson(dynamic json) {
    price = json['price'];
    isFree = json['is_free'];
  }
  num? price;
  num? isFree;
CompatibilityTest copyWith({  num? price,
  num? isFree,
}) => CompatibilityTest(  price: price ?? this.price,
  isFree: isFree ?? this.isFree,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['price'] = price;
    map['is_free'] = isFree;
    return map;
  }

}

/// id : 4
/// image : "https://saada-app.com/storage/images/plans/default.png"
/// name : "الباقة الذهبية"
/// duration : "٦ شهور"
/// price : "1999"
/// features : ["علامة مميزة وتعزيز الظهور","البحث بتفاصيل محددة","اختبار التوافق","استشارة مختص علاقات زوجية قبل او بعد الزواج","مساعدة الخاطبات حتي من خارج التطبيق لإيجاد شريك يناسبك حتي اربع مرات اي نوع زواج","التحدث مع الأعضاء"]
/// premium_account : 1
/// advanced_filter : 1
/// compatibility_test : 1
/// relation_specialist_consulting : 1
/// fiances_helping : 1
/// chatting : 1

class Plan {
  Plan({
      this.id, 
      this.image, 
      this.name, 
      this.duration, 
      this.price, 
      this.features, 
      this.premiumAccount, 
      this.advancedFilter, 
      this.compatibilityTest, 
      this.relationSpecialistConsulting, 
      this.fiancesHelping, 
      this.chatting,});

  Plan.fromJson(dynamic json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    duration = json['duration'];
    price = json['price'];
    features = json['features'] != null ? json['features'].cast<String>() : [];
    premiumAccount = json['premium_account'];
    advancedFilter = json['advanced_filter'];
    compatibilityTest = json['compatibility_test'];
    relationSpecialistConsulting = json['relation_specialist_consulting'];
    fiancesHelping = json['fiances_helping'];
    chatting = json['chatting'];
  }
  num? id;
  String? image;
  String? name;
  String? duration;
  String? price;
  List<String>? features;
  num? premiumAccount;
  num? advancedFilter;
  num? compatibilityTest;
  num? relationSpecialistConsulting;
  num? fiancesHelping;
  num? chatting;
Plan copyWith({  num? id,
  String? image,
  String? name,
  String? duration,
  String? price,
  List<String>? features,
  num? premiumAccount,
  num? advancedFilter,
  num? compatibilityTest,
  num? relationSpecialistConsulting,
  num? fiancesHelping,
  num? chatting,
}) => Plan(  id: id ?? this.id,
  image: image ?? this.image,
  name: name ?? this.name,
  duration: duration ?? this.duration,
  price: price ?? this.price,
  features: features ?? this.features,
  premiumAccount: premiumAccount ?? this.premiumAccount,
  advancedFilter: advancedFilter ?? this.advancedFilter,
  compatibilityTest: compatibilityTest ?? this.compatibilityTest,
  relationSpecialistConsulting: relationSpecialistConsulting ?? this.relationSpecialistConsulting,
  fiancesHelping: fiancesHelping ?? this.fiancesHelping,
  chatting: chatting ?? this.chatting,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image'] = image;
    map['name'] = name;
    map['duration'] = duration;
    map['price'] = price;
    map['features'] = features;
    map['premium_account'] = premiumAccount;
    map['advanced_filter'] = advancedFilter;
    map['compatibility_test'] = compatibilityTest;
    map['relation_specialist_consulting'] = relationSpecialistConsulting;
    map['fiances_helping'] = fiancesHelping;
    map['chatting'] = chatting;
    return map;
  }

}

/// id : 2
/// name : "مصري/ة"

class Nationality {
  Nationality({
      this.id, 
      this.name,});

  Nationality.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }
  num? id;
  String? name;
Nationality copyWith({  num? id,
  String? name,
}) => Nationality(  id: id ?? this.id,
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
/// name : "الرياض"

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