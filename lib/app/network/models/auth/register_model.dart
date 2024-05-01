/// id : 3
/// name : ""
/// email : "nn@nn.com"
/// phone : "966000000000"
/// avatar : "https://saada-app.com/images/default.png"
/// status : 0
/// lang : ""
/// gender : 0
/// completed_profile : 0
/// new_account : 0
/// gift_plan : 0
/// notify_news_chats : 0
/// notify_news_chat_message : 0
/// notify_avatar_illustration : 0
/// notify_profile_viewers : 0
/// notify_new_emails : 0
/// visibility : 0
/// token : "1|7WVsMp5UhpongEEO2dMevWOMtDsLmhr0DHgkhHmsd32d6102"

class RegisterModel {
  RegisterModel({
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
      this.notifyNewsChats, 
      this.notifyNewsChatMessage, 
      this.notifyAvatarIllustration, 
      this.notifyProfileViewers, 
      this.notifyNewEmails, 
      this.visibility, 
      this.token,});

  RegisterModel.fromJson(dynamic json) {
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
  num? notifyNewsChats;
  num? notifyNewsChatMessage;
  num? notifyAvatarIllustration;
  num? notifyProfileViewers;
  num? notifyNewEmails;
  num? visibility;
  String? token;
RegisterModel copyWith({  num? id,
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
  num? notifyNewsChats,
  num? notifyNewsChatMessage,
  num? notifyAvatarIllustration,
  num? notifyProfileViewers,
  num? notifyNewEmails,
  num? visibility,
  String? token,
}) => RegisterModel(  id: id ?? this.id,
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