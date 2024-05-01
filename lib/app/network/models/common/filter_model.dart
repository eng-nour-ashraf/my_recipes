import 'profiles.dart';

/// profiles : [{"id":3,"name":"nour","avatar":"https://saada-app.com/storage/images/users/16999153807105859.jpeg","blurred_avatar":1,"visibility":1,"premium":0,"city":{"id":1,"name":"Riyadh"},"country":{"id":1,"name":"Saudi Arabia","flag":"https://saada-app.com/storage/images/countries/sa.png"},"favourite":0,"description":"my description","life_partner_description":"partner description","quick_view_answers":["22"],"compatibility":null,"answers":[{"question":"My job level","answer":"Student"},{"question":"My educational level","answer":"Other"}],"contact_times":[{"id":3,"time":"10:10:00"},{"id":5,"time":"00:10:00"}]},{"id":8,"name":"admin","avatar":"https://saada-app.com/images/default.png","blurred_avatar":1,"visibility":1,"premium":0,"city":null,"country":null,"favourite":0,"description":"","life_partner_description":"","quick_view_answers":[],"compatibility":null,"answers":[],"contact_times":[]},{"id":9,"name":"Saada-App","avatar":"https://saada-app.com/images/default.png","blurred_avatar":1,"visibility":1,"premium":0,"city":null,"country":null,"favourite":0,"description":"","life_partner_description":"","quick_view_answers":[],"compatibility":null,"answers":[],"contact_times":[]},{"id":14,"name":"mahmoud","avatar":"https://saada-app.com/storage/images/users/17012896388406249.jpg","blurred_avatar":1,"visibility":1,"premium":0,"city":{"id":1,"name":"Riyadh"},"country":{"id":1,"name":"Saudi Arabia","flag":"https://saada-app.com/storage/images/countries/sa.png"},"favourite":0,"description":"my description","life_partner_description":"partner description","quick_view_answers":["22"],"compatibility":null,"answers":[{"question":"My job level","answer":"Student"},{"question":"My educational level","answer":"Other"}],"contact_times":[]}]

class FilterModel {
  FilterModel({
      this.profiles,});

  FilterModel.fromJson(dynamic json) {
    if (json['profiles'] != null) {
      profiles = [];
      json['profiles'].forEach((v) {
        profiles?.add(Profiles.fromJson(v));
      });
    }
  }
  List<Profiles>? profiles;
FilterModel copyWith({  List<Profiles>? profiles,
}) => FilterModel(  profiles: profiles ?? this.profiles,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (profiles != null) {
      map['profiles'] = profiles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}