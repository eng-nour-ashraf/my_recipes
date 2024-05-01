/// countries : [{"id":1,"name":"المملكة العربية السعودية","flag":"https://saada-app.com/storage/images/countries/sa.png"},{"id":2,"name":"مصر","flag":"https://saada-app.com/storage/images/countries/eg.png"}]

class CountriesModel {
  CountriesModel({
      this.countries,});

  CountriesModel.fromJson(dynamic json) {
    if (json['countries'] != null) {
      countries = [];
      json['countries'].forEach((v) {
        countries?.add(Countries.fromJson(v));
      });
    }
  }
  List<Countries>? countries;
CountriesModel copyWith({  List<Countries>? countries,
}) => CountriesModel(  countries: countries ?? this.countries,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (countries != null) {
      map['countries'] = countries?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// name : "المملكة العربية السعودية"
/// flag : "https://saada-app.com/storage/images/countries/sa.png"

class Countries {
  Countries({
      this.id, 
      this.name, 
      this.flag,});

  Countries.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    flag = json['flag'];
  }
  num? id;
  String? name;
  String? flag;
Countries copyWith({  num? id,
  String? name,
  String? flag,
}) => Countries(  id: id ?? this.id,
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