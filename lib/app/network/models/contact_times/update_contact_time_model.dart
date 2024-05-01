/// contact_time : {"id":1,"time":"20:00"}

class UpdateContactTimeModel {
  UpdateContactTimeModel({
      this.contactTime,});

  UpdateContactTimeModel.fromJson(dynamic json) {
    contactTime = json['contact_time'] != null ? ContactTime.fromJson(json['contact_time']) : null;
  }
  ContactTime? contactTime;
UpdateContactTimeModel copyWith({  ContactTime? contactTime,
}) => UpdateContactTimeModel(  contactTime: contactTime ?? this.contactTime,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (contactTime != null) {
      map['contact_time'] = contactTime?.toJson();
    }
    return map;
  }

}

/// id : 1
/// time : "20:00"

class ContactTime {
  ContactTime({
      this.id, 
      this.time,});

  ContactTime.fromJson(dynamic json) {
    id = json['id'];
    time = json['time'];
  }
  num? id;
  String? time;
ContactTime copyWith({  num? id,
  String? time,
}) => ContactTime(  id: id ?? this.id,
  time: time ?? this.time,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['time'] = time;
    return map;
  }

}