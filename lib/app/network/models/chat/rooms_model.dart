/// rooms : [{"id":1,"engaged":0,"name":"nour","avatar":"https://saada-app.com/storage/images/users/17048574677586316.jpg","seen":1,"message":"yo yo","type":1,"created_at":"10:03 pm","updated_at":"03:21 am","visibility":1,"blurred_avatar":0}]

class RoomsModel {
  RoomsModel({
      this.rooms,});

  RoomsModel.fromJson(dynamic json) {
    if (json['rooms'] != null) {
      rooms = [];
      json['rooms'].forEach((v) {
        rooms?.add(Rooms.fromJson(v));
      });
    }
  }
  List<Rooms>? rooms;
RoomsModel copyWith({  List<Rooms>? rooms,
}) => RoomsModel(  rooms: rooms ?? this.rooms,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (rooms != null) {
      map['rooms'] = rooms?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// engaged : 0
/// name : "nour"
/// avatar : "https://saada-app.com/storage/images/users/17048574677586316.jpg"
/// seen : 1
/// message : "yo yo"
/// type : 1
/// created_at : "10:03 pm"
/// updated_at : "03:21 am"
/// visibility : 1
/// blurred_avatar : 0

class Rooms {
  Rooms({
      this.id, 
      this.engaged, 
      this.name, 
      this.avatar, 
      this.seen, 
      this.message, 
      this.type, 
      this.createdAt, 
      this.updatedAt, 
      this.visibility, 
      this.blurredAvatar,});

  Rooms.fromJson(dynamic json) {
    id = json['id'];
    engaged = json['engaged'];
    name = json['name'];
    avatar = json['avatar'];
    seen = json['seen'];
    message = json['message'];
    type = json['type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    visibility = json['visibility'];
    blurredAvatar = json['blurred_avatar'];
  }
  num? id;
  num? engaged;
  String? name;
  String? avatar;
  num? seen;
  String? message;
  num? type;
  String? createdAt;
  String? updatedAt;
  num? visibility;
  num? blurredAvatar;
Rooms copyWith({  num? id,
  num? engaged,
  String? name,
  String? avatar,
  num? seen,
  String? message,
  num? type,
  String? createdAt,
  String? updatedAt,
  num? visibility,
  num? blurredAvatar,
}) => Rooms(  id: id ?? this.id,
  engaged: engaged ?? this.engaged,
  name: name ?? this.name,
  avatar: avatar ?? this.avatar,
  seen: seen ?? this.seen,
  message: message ?? this.message,
  type: type ?? this.type,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  visibility: visibility ?? this.visibility,
  blurredAvatar: blurredAvatar ?? this.blurredAvatar,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['engaged'] = engaged;
    map['name'] = name;
    map['avatar'] = avatar;
    map['seen'] = seen;
    map['message'] = message;
    map['type'] = type;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['visibility'] = visibility;
    map['blurred_avatar'] = blurredAvatar;
    return map;
  }

}