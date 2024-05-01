/// contact_times : [{"id":1,"time":"14:20:00"}]

class ListUserContactTimesModel {
  ListUserContactTimesModel({
      this.contactTimes,});

  ListUserContactTimesModel.fromJson(dynamic json) {
    if (json['contact_times'] != null) {
      contactTimes = [];
      json['contact_times'].forEach((v) {
        contactTimes?.add(ContactTimes.fromJson(v));
      });
    }
  }
  List<ContactTimes>? contactTimes;
ListUserContactTimesModel copyWith({  List<ContactTimes>? contactTimes,
}) => ListUserContactTimesModel(  contactTimes: contactTimes ?? this.contactTimes,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (contactTimes != null) {
      map['contact_times'] = contactTimes?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// time : "14:20:00"

class ContactTimes {
  ContactTimes({
      this.id, 
      this.time,});

  ContactTimes.fromJson(dynamic json) {
    id = json['id'];
    time = json['time'];
  }
  num? id;
  String? time;
ContactTimes copyWith({  num? id,
  String? time,
}) => ContactTimes(  id: id ?? this.id,
  time: time ?? this.time,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['time'] = time;
    return map;
  }

}