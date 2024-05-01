/// user : {"id":3,"name":"nour","email":"nn@nn.com","phone":"966000000000","avatar":"https://saada-app.com/storage/images/users/16999153807105859.jpeg","status":1,"lang":"ar","gender":1,"completed_profile":1,"new_account":1,"gift_plan":1,"city":{"id":1,"name":"الرياض"},"nationality":{"id":2,"name":"مصري"},"notify_news_chats":0,"notify_news_chat_message":0,"notify_avatar_illustration":0,"notify_profile_viewers":0,"notify_new_emails":0,"visibility":1,"token":"1|7WVsMp5UhpongEEO2dMevWOMtDsLmhr0DHgkhHmsd32d6102"}

class CheckCodeModel {
  CheckCodeModel({
      this.user,});

  CheckCodeModel.fromJson(dynamic json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  User? user;
CheckCodeModel copyWith({  User? user,
}) => CheckCodeModel(  user: user ?? this.user,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

/// id : 3
/// name : "nour"
/// email : "nn@nn.com"
/// phone : "966000000000"
/// avatar : "https://saada-app.com/storage/images/users/16999153807105859.jpeg"
/// status : 1
/// lang : "ar"
/// gender : 1
/// completed_profile : 1
/// new_account : 1
/// gift_plan : 1
/// city : {"id":1,"name":"الرياض"}
/// nationality : {"id":2,"name":"مصري"}
/// notify_news_chats : 0
/// notify_news_chat_message : 0
/// notify_avatar_illustration : 0
/// notify_profile_viewers : 0
/// notify_new_emails : 0
/// visibility : 1
/// token : "1|7WVsMp5UhpongEEO2dMevWOMtDsLmhr0DHgkhHmsd32d6102"

class User {
  User({
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
      this.token,});

  User.fromJson(dynamic json) {
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
    token = json['token'];
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
  String? token;
User copyWith({  num? id,
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
  String? token,
}) => User(  id: id ?? this.id,
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
  token: token ?? this.token,
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
    map['token'] = token;
    return map;
  }

}

/// id : 2
/// name : "مصري"

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