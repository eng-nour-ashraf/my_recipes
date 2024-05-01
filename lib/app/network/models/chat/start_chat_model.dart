/// room : {"id":1,"engaged":0,"name":"mahmoud","avatar":"https://saada-app.com/storage/images/users/17027496998876988.jpg","seen":0,"message":"hi","type":1,"created_at":"10:03 pm","visibility":0}
/// message : {"message":"hi","sender_id":3,"receiver_id":14,"seen":0,"created_at":"02:03 am","type":1}

class StartChatModel {
  StartChatModel({
      this.room, 
      this.message,});

  StartChatModel.fromJson(dynamic json) {
    room = json['room'] != null ? Room.fromJson(json['room']) : null;
    message = json['message'] != null ? Message.fromJson(json['message']) : null;
  }
  Room? room;
  Message? message;
StartChatModel copyWith({  Room? room,
  Message? message,
}) => StartChatModel(  room: room ?? this.room,
  message: message ?? this.message,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (room != null) {
      map['room'] = room?.toJson();
    }
    if (message != null) {
      map['message'] = message?.toJson();
    }
    return map;
  }

}

/// message : "hi"
/// sender_id : 3
/// receiver_id : 14
/// seen : 0
/// created_at : "02:03 am"
/// type : 1

class Message {
  Message({
      this.message, 
      this.senderId, 
      this.receiverId, 
      this.seen, 
      this.createdAt, 
      this.type,});

  Message.fromJson(dynamic json) {
    message = json['message'];
    senderId = json['sender_id'];
    receiverId = json['receiver_id'];
    seen = json['seen'];
    createdAt = json['created_at'];
    type = json['type'];
  }
  String? message;
  num? senderId;
  num? receiverId;
  num? seen;
  String? createdAt;
  num? type;
Message copyWith({  String? message,
  num? senderId,
  num? receiverId,
  num? seen,
  String? createdAt,
  num? type,
}) => Message(  message: message ?? this.message,
  senderId: senderId ?? this.senderId,
  receiverId: receiverId ?? this.receiverId,
  seen: seen ?? this.seen,
  createdAt: createdAt ?? this.createdAt,
  type: type ?? this.type,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['sender_id'] = senderId;
    map['receiver_id'] = receiverId;
    map['seen'] = seen;
    map['created_at'] = createdAt;
    map['type'] = type;
    return map;
  }

}

/// id : 1
/// engaged : 0
/// name : "mahmoud"
/// avatar : "https://saada-app.com/storage/images/users/17027496998876988.jpg"
/// seen : 0
/// message : "hi"
/// type : 1
/// created_at : "10:03 pm"
/// visibility : 0

class Room {
  Room({
      this.id, 
      this.engaged, 
      this.name, 
      this.avatar, 
      this.seen, 
      this.message, 
      this.type, 
      this.createdAt, 
      this.visibility,});

  Room.fromJson(dynamic json) {
    id = json['id'];
    engaged = json['engaged'];
    name = json['name'];
    avatar = json['avatar'];
    seen = json['seen'];
    message = json['message'];
    type = json['type'];
    createdAt = json['created_at'];
    visibility = json['visibility'];
  }
  num? id;
  num? engaged;
  String? name;
  String? avatar;
  num? seen;
  String? message;
  num? type;
  String? createdAt;
  num? visibility;
Room copyWith({  num? id,
  num? engaged,
  String? name,
  String? avatar,
  num? seen,
  String? message,
  num? type,
  String? createdAt,
  num? visibility,
}) => Room(  id: id ?? this.id,
  engaged: engaged ?? this.engaged,
  name: name ?? this.name,
  avatar: avatar ?? this.avatar,
  seen: seen ?? this.seen,
  message: message ?? this.message,
  type: type ?? this.type,
  createdAt: createdAt ?? this.createdAt,
  visibility: visibility ?? this.visibility,
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
    map['visibility'] = visibility;
    return map;
  }

}