/// pagination : {"total":7,"count":7,"per_page":15,"next_page_url":"","perv_page_url":"","current_page":1,"total_pages":1}
/// notifications : [{"id":"b6933817-1c49-445b-8829-f8f652dcb61f","type":13,"title":"سعادة","body":"قام nourبطلب توضيح صورة البروفايل","seen":true,"target_id":6,"avatar":"https://saada-app.com/storage/images/users/16999153807105859.jpeg","time":"09:44 pm"},{"id":"9ea50b27-d119-40c0-b8c2-b9fedfaf3ce3","type":1,"title":"سعادة","body":"سامو عليكوووووو","seen":true,"target_id":null,"avatar":"https://saada-app.com/images/notification.png","time":"09:32 pm"},{"id":"76d18d38-b19e-417e-b1bd-fc2a2b5d87ce","type":1,"title":"سعادة","body":"سامو عليكوووووو","seen":true,"target_id":null,"avatar":"https://saada-app.com/images/notification.png","time":"2023 Dec 15"},{"id":"53582ebc-bb6c-4ba2-8b7f-f1f7fd86a3bb","type":1,"title":"سعادة","body":"سامو عليكوووووو","seen":true,"target_id":null,"avatar":"https://saada-app.com/images/notification.png","time":"2023 Dec 15"},{"id":"b5f68760-436d-41da-9436-a59f8d21fbc3","type":1,"title":"سعادة","body":"سامو عليكوووووو","seen":true,"target_id":null,"avatar":"https://saada-app.com/images/notification.png","time":"2023 Dec 15"},{"id":"912f596d-0624-4d2c-9744-9fb7260d2e4d","type":1,"title":"سعادة","body":"سامو عليكوووووو","seen":true,"target_id":null,"avatar":"https://saada-app.com/images/notification.png","time":"2023 Dec 15"},{"id":"86a400d0-093a-4107-b97d-c21a127fa2bd","type":3,"title":"سعادة","body":"تم قبول طلب تفعيل حسابك من قبل الإدارة","seen":true,"target_id":null,"avatar":"https://saada-app.com/images/notification.png","time":"2023 Nov 28"}]

class NotificationModel {
  NotificationModel({
      this.pagination, 
      this.notifications,});

  NotificationModel.fromJson(dynamic json) {
    pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
    if (json['notifications'] != null) {
      notifications = [];
      json['notifications'].forEach((v) {
        notifications?.add(Notifications.fromJson(v));
      });
    }
  }
  Pagination? pagination;
  List<Notifications>? notifications;
NotificationModel copyWith({  Pagination? pagination,
  List<Notifications>? notifications,
}) => NotificationModel(  pagination: pagination ?? this.pagination,
  notifications: notifications ?? this.notifications,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (pagination != null) {
      map['pagination'] = pagination?.toJson();
    }
    if (notifications != null) {
      map['notifications'] = notifications?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "b6933817-1c49-445b-8829-f8f652dcb61f"
/// type : 13
/// title : "سعادة"
/// body : "قام nourبطلب توضيح صورة البروفايل"
/// seen : true
/// target_id : 6
/// avatar : "https://saada-app.com/storage/images/users/16999153807105859.jpeg"
/// time : "09:44 pm"

class Notifications {
  Notifications({
      this.id, 
      this.type, 
      this.title, 
      this.body, 
      this.seen, 
      this.targetId, 
      this.targetStatus,
      this.avatar,
      this.time,});

  Notifications.fromJson(dynamic json) {
    id = json['id'];
    type = json['type'];
    title = json['title'];
    body = json['body'];
    seen = json['seen'];
    targetId = json['target_id'];
    targetStatus = json['target_status'];
    avatar = json['avatar'];
    time = json['time'];
  }
  String? id;
  num? type;
  String? title;
  String? body;
  bool? seen;
  num? targetId;
  String? avatar;
  String? targetStatus;
  String? time;
Notifications copyWith({ String? id,
  num? type,
  String? title,
  String? body,
  bool? seen,
  num? targetId,
  String? avatar,
  String? targetStatus,
  String? time,
}) => Notifications(  id: id ?? this.id,
  type: type ?? this.type,
  title: title ?? this.title,
  body: body ?? this.body,
  seen: seen ?? this.seen,
  targetId: targetId ?? this.targetId,
  avatar: avatar ?? this.avatar,
  targetStatus: targetStatus ?? this.targetStatus,
  time: time ?? this.time,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    map['title'] = title;
    map['body'] = body;
    map['seen'] = seen;
    map['target_id'] = targetId;
    map['target_status'] = targetStatus;
    map['avatar'] = avatar;
    map['time'] = time;
    return map;
  }

}

/// total : 7
/// count : 7
/// per_page : 15
/// next_page_url : ""
/// perv_page_url : ""
/// current_page : 1
/// total_pages : 1

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