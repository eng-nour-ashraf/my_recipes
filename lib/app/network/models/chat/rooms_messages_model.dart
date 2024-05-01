/// room : {"id":1,"engaged":0,"name":"nour","avatar":"https://saada-app.com/storage/images/users/17048574677586316.jpg","seen":1,"message":"yo yo","type":1,"created_at":"10:03 pm","updated_at":"03:21 am","visibility":1,"blurred_avatar":0}
/// pagination : {"total":47,"count":20,"per_page":20,"next_page_url":"https://saada-app.com/api/messages?page=2","perv_page_url":"","current_page":1,"total_pages":3}
/// messages : [{"message":"yo yo","sender_id":3,"receiver_id":14,"seen":1,"created_at":"03:21 am","type":1,"date":"28 Dec"},{"message":"yo yo","sender_id":3,"receiver_id":14,"seen":1,"created_at":"03:20 am","type":1,"date":"28 Dec"},{"message":"yo yo","sender_id":3,"receiver_id":14,"seen":1,"created_at":"03:18 am","type":1,"date":"28 Dec"},{"message":"https://saada-app.com/storage/images/chats/17032927797474132.mp3","sender_id":3,"receiver_id":14,"seen":1,"created_at":"03:52 am","type":3,"date":"23 Dec"},{"message":"yo yo yo","sender_id":3,"receiver_id":14,"seen":1,"created_at":"03:48 am","type":1,"date":"23 Dec"},{"message":"https://saada-app.com/storage/images/chats/17031203826920769.mp3","sender_id":14,"receiver_id":3,"seen":1,"created_at":"03:59 am","type":3,"date":"21 Dec"},{"message":"https://saada-app.com/storage/images/chats/17031200439835334.mp3","sender_id":14,"receiver_id":3,"seen":1,"created_at":"03:54 am","type":3,"date":"21 Dec"},{"message":"https://saada-app.com/storage/images/chats/17031183305744629.mp3","sender_id":3,"receiver_id":14,"seen":1,"created_at":"03:25 am","type":3,"date":"21 Dec"},{"message":"https://saada-app.com/storage/images/chats/17031154517473792.jpg","sender_id":14,"receiver_id":3,"seen":1,"created_at":"02:37 am","type":2,"date":"21 Dec"},{"message":"https://saada-app.com/storage/images/chats/17031148135328030.png","sender_id":3,"receiver_id":14,"seen":1,"created_at":"02:26 am","type":2,"date":"21 Dec"},{"message":"hi","sender_id":3,"receiver_id":14,"seen":1,"created_at":"02:03 am","type":1,"date":"21 Dec"},{"message":"https://saada-app.com/storage/images/chats/17031118469006542.jpeg","sender_id":3,"receiver_id":14,"seen":1,"created_at":"01:37 am","type":2,"date":"21 Dec"},{"message":"yo yo","sender_id":3,"receiver_id":14,"seen":1,"created_at":"12:50 am","type":1,"date":"21 Dec"},{"message":"yo yo","sender_id":3,"receiver_id":14,"seen":1,"created_at":"12:48 am","type":1,"date":"21 Dec"},{"message":"yo yo","sender_id":3,"receiver_id":14,"seen":1,"created_at":"12:48 am","type":1,"date":"21 Dec"},{"message":"aaaaaa","sender_id":14,"receiver_id":3,"seen":1,"created_at":"12:47 am","type":1,"date":"21 Dec"},{"message":"yo yo","sender_id":3,"receiver_id":14,"seen":1,"created_at":"12:46 am","type":1,"date":"21 Dec"},{"message":"yo yo","sender_id":3,"receiver_id":14,"seen":1,"created_at":"12:41 am","type":1,"date":"21 Dec"},{"message":"yo yo","sender_id":3,"receiver_id":14,"seen":1,"created_at":"12:40 am","type":1,"date":"21 Dec"},{"message":"yo yo","sender_id":3,"receiver_id":14,"seen":1,"created_at":"12:40 am","type":1,"date":"21 Dec"}]

class RoomsMessagesModel {
  RoomsMessagesModel({
      this.room, 
      this.pagination, 
      this.messages,});

  RoomsMessagesModel.fromJson(dynamic json) {
    room = json['room'] != null ? Room.fromJson(json['room']) : null;
    pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
    if (json['messages'] != null) {
      messages = [];
      json['messages'].forEach((v) {
        messages?.add(Messages.fromJson(v));
      });
    }
  }
  Room? room;
  Pagination? pagination;
  List<Messages>? messages;
RoomsMessagesModel copyWith({  Room? room,
  Pagination? pagination,
  List<Messages>? messages,
}) => RoomsMessagesModel(  room: room ?? this.room,
  pagination: pagination ?? this.pagination,
  messages: messages ?? this.messages,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (room != null) {
      map['room'] = room?.toJson();
    }
    if (pagination != null) {
      map['pagination'] = pagination?.toJson();
    }
    if (messages != null) {
      map['messages'] = messages?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// message : "yo yo"
/// sender_id : 3
/// receiver_id : 14
/// seen : 1
/// created_at : "03:21 am"
/// type : 1
/// date : "28 Dec"

class Messages {
  Messages({
    this.audioPosition = Duration.zero,
    this.audioDuration = Duration.zero,
    this.message,
    this.senderId,
    this.receiverId,
    this.seen,
    this.createdAt,
    this.type,
    this.date,
  });

  Messages.fromJson(dynamic json) {
    message = json['message'];
    senderId = json['sender_id'];
    receiverId = json['receiver_id'];
    seen = json['seen'];
    createdAt = json['created_at'];
    type = json['type'];
    date = json['date'];
  }
  String? message;
  num? senderId;
  num? receiverId;
  num? seen;
  Duration audioPosition = Duration.zero;
  Duration audioDuration = Duration.zero;
  String? createdAt;
  num? type;
  String? date;
Messages copyWith({  String? message,
  num? senderId,
  num? receiverId,
  num? seen,
  String? createdAt,
  num? type,
  String? date,
}) => Messages(  message: message ?? this.message,
  senderId: senderId ?? this.senderId,
  receiverId: receiverId ?? this.receiverId,
  seen: seen ?? this.seen,
  createdAt: createdAt ?? this.createdAt,
  type: type ?? this.type,
  date: date ?? this.date,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['sender_id'] = senderId;
    map['receiver_id'] = receiverId;
    map['seen'] = seen;
    map['created_at'] = createdAt;
    map['type'] = type;
    map['date'] = date;
    return map;
  }

}

/// total : 47
/// count : 20
/// per_page : 20
/// next_page_url : "https://saada-app.com/api/messages?page=2"
/// perv_page_url : ""
/// current_page : 1
/// total_pages : 3

class Pagination {
  Pagination({
      this.total, 
      this.count, 
      this.perPage, 
      this.nextPageUrl, 
      this.pervPageUrl, 
      this.currentPage, 
      this.totalPages,});

  Pagination.fromJson(dynamic json) {
    total = json['total'];
    count = json['count'];
    perPage = json['per_page'];
    nextPageUrl = json['next_page_url'];
    pervPageUrl = json['perv_page_url'];
    currentPage = json['current_page'];
    totalPages = json['total_pages'];
  }
  num? total;
  num? count;
  num? perPage;
  String? nextPageUrl;
  String? pervPageUrl;
  num? currentPage;
  num? totalPages;
Pagination copyWith({  num? total,
  num? count,
  num? perPage,
  String? nextPageUrl,
  String? pervPageUrl,
  num? currentPage,
  num? totalPages,
}) => Pagination(  total: total ?? this.total,
  count: count ?? this.count,
  perPage: perPage ?? this.perPage,
  nextPageUrl: nextPageUrl ?? this.nextPageUrl,
  pervPageUrl: pervPageUrl ?? this.pervPageUrl,
  currentPage: currentPage ?? this.currentPage,
  totalPages: totalPages ?? this.totalPages,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['count'] = count;
    map['per_page'] = perPage;
    map['next_page_url'] = nextPageUrl;
    map['perv_page_url'] = pervPageUrl;
    map['current_page'] = currentPage;
    map['total_pages'] = totalPages;
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

class Room {
  Room({
      this.id, 
      this.engaged, 
      this.name, 
      this.avatar, 
      this.seen, 
      this.message, 
      this.type, 
      this.block,
      this.report,
      this.createdAt,
      this.updatedAt, 
      this.visibility, 
      this.blurredAvatar,});

  Room.fromJson(dynamic json) {
    id = json['id'];
    engaged = json['engaged'];
    name = json['name'];
    avatar = json['avatar'];
    seen = json['seen'];
    message = json['message'];
    type = json['type'];
    report = json['report'];
    block = json['block'];
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
  num? report;
  num? block;
  String? createdAt;
  String? updatedAt;
  num? visibility;
  num? blurredAvatar;
Room copyWith({  num? id,
  num? engaged,
  String? name,
  String? avatar,
  num? seen,
  String? message,
  num? type,
  num? report,
  num? block,
  String? createdAt,
  String? updatedAt,
  num? visibility,
  num? blurredAvatar,
}) => Room(  id: id ?? this.id,
  engaged: engaged ?? this.engaged,
  name: name ?? this.name,
  avatar: avatar ?? this.avatar,
  seen: seen ?? this.seen,
  message: message ?? this.message,
  type: type ?? this.type,
  block: block ?? this.block,
  report: report ?? this.report,
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
    map['block'] = block;
    map['report'] = report;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['visibility'] = visibility;
    map['blurred_avatar'] = blurredAvatar;
    return map;
  }

}