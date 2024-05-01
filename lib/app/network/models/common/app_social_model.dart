/// facebook : "facebook"
/// twitter : "twitter"
/// instagram : "instagram"
/// snapchat : "snapchat"
/// whatsapp : "888888"
/// android_url : "android_url"
/// ios_url : "ios_url"

class AppSocialModel {
  AppSocialModel({
      this.facebook, 
      this.twitter, 
      this.instagram, 
      this.snapchat, 
      this.whatsapp, 
      this.androidUrl, 
      this.iosUrl,});

  AppSocialModel.fromJson(dynamic json) {
    facebook = json['facebook'];
    twitter = json['twitter'];
    instagram = json['instagram'];
    snapchat = json['snapchat'];
    whatsapp = json['whatsapp'];
    androidUrl = json['android_url'];
    iosUrl = json['ios_url'];
  }
  String? facebook;
  String? twitter;
  String? instagram;
  String? snapchat;
  String? whatsapp;
  String? androidUrl;
  String? iosUrl;
AppSocialModel copyWith({  String? facebook,
  String? twitter,
  String? instagram,
  String? snapchat,
  String? whatsapp,
  String? androidUrl,
  String? iosUrl,
}) => AppSocialModel(  facebook: facebook ?? this.facebook,
  twitter: twitter ?? this.twitter,
  instagram: instagram ?? this.instagram,
  snapchat: snapchat ?? this.snapchat,
  whatsapp: whatsapp ?? this.whatsapp,
  androidUrl: androidUrl ?? this.androidUrl,
  iosUrl: iosUrl ?? this.iosUrl,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['facebook'] = facebook;
    map['twitter'] = twitter;
    map['instagram'] = instagram;
    map['snapchat'] = snapchat;
    map['whatsapp'] = whatsapp;
    map['android_url'] = androidUrl;
    map['ios_url'] = iosUrl;
    return map;
  }

}