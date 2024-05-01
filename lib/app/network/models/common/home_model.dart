import 'profiles.dart';

/// unread_notifications : 0
/// unread_messages : 0
/// pagination : {"total":1,"count":1,"per_page":15,"next_page_url":"","perv_page_url":"","current_page":1,"total_pages":1}
/// profiles : [{"id":3,"name":"nour","avatar":"https://saada-app.com/storage/images/users/16999153807105859.jpeg","blurred_avatar":1,"visibility":1,"premium":0,"city":{"id":1,"name":"Riyadh"},"country":{"id":1,"name":"Saudi Arabia","flag":"https://saada-app.com/storage/images/countries/sa.png"},"favourite":0,"description":"my description","life_partner_description":"partner description","quick_view_answers":["22"],"compatibility":null,"answers":[{"question":"My job level","answer":"Student"},{"question":"My educational level","answer":"Other"}],"contact_times":[{"id":3,"time":"10:10:00"},{"id":5,"time":"00:10:00"}]}]

class HomeModel {
  HomeModel({
      this.unreadNotifications, 
      this.unreadMessages, 
      this.pagination, 
      this.profiles,});

  HomeModel.fromJson(dynamic json) {
    unreadNotifications = json['unread_notifications'];
    unreadMessages = json['unread_messages'];
    pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
    if (json['profiles'] != null) {
      profiles = [];
      json['profiles'].forEach((v) {
        profiles?.add(Profiles.fromJson(v));
      });
    }
  }
  num? unreadNotifications;
  num? unreadMessages;
  Pagination? pagination;
  List<Profiles>? profiles;
HomeModel copyWith({  num? unreadNotifications,
  num? unreadMessages,
  Pagination? pagination,
  List<Profiles>? profiles,
}) => HomeModel(  unreadNotifications: unreadNotifications ?? this.unreadNotifications,
  unreadMessages: unreadMessages ?? this.unreadMessages,
  pagination: pagination ?? this.pagination,
  profiles: profiles ?? this.profiles,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['unread_notifications'] = unreadNotifications;
    map['unread_messages'] = unreadMessages;
    if (pagination != null) {
      map['pagination'] = pagination?.toJson();
    }
    if (profiles != null) {
      map['profiles'] = profiles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 3
/// name : "nour"
/// avatar : "https://saada-app.com/storage/images/users/16999153807105859.jpeg"
/// blurred_avatar : 1
/// visibility : 1
/// premium : 0
/// city : {"id":1,"name":"Riyadh"}
/// country : {"id":1,"name":"Saudi Arabia","flag":"https://saada-app.com/storage/images/countries/sa.png"}
/// favourite : 0
/// description : "my description"
/// life_partner_description : "partner description"
/// quick_view_answers : ["22"]
/// compatibility : null
/// answers : [{"question":"My job level","answer":"Student"},{"question":"My educational level","answer":"Other"}]
/// contact_times : [{"id":3,"time":"10:10:00"},{"id":5,"time":"00:10:00"}]

/// total : 1
/// count : 1
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