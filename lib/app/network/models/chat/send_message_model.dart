/// message : "https://saada-app.com/storage/images/chats/17031118469006542.jpeg"
/// sender_id : 3
/// receiver_id : 14
/// seen : 0
/// created_at : "01:37 am"
/// type : 2

class SendMessageModel {
  SendMessageModel({
      this.message, 
      this.senderId, 
      this.receiverId, 
      this.seen, 
      this.createdAt, 
      this.type,});

  SendMessageModel.fromJson(dynamic json) {
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
SendMessageModel copyWith({  String? message,
  num? senderId,
  num? receiverId,
  num? seen,
  String? createdAt,
  num? type,
}) => SendMessageModel(  message: message ?? this.message,
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