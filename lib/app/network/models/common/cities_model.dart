/// cities : [{"id":4,"name":"الإسكندرية"},{"id":3,"name":"القاهرة"}]

class CitiesModel {
  CitiesModel({
      this.cities,});

  CitiesModel.fromJson(dynamic json) {
    if (json['cities'] != null) {
      cities = [];
      json['cities'].forEach((v) {
        cities?.add(Cities.fromJson(v));
      });
    }
  }
  List<Cities>? cities;
CitiesModel copyWith({  List<Cities>? cities,
}) => CitiesModel(  cities: cities ?? this.cities,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (cities != null) {
      map['cities'] = cities?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 4
/// name : "الإسكندرية"

class Cities {
  Cities({
      this.id, 
      this.name,});

  Cities.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }
  num? id;
  String? name;
Cities copyWith({  num? id,
  String? name,
}) => Cities(  id: id ?? this.id,
  name: name ?? this.name,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

}