/// token : "2|Azr2xzUCBAmvWJmpPgVWa9BpfhqRvLXaz30NQ10P36ba95e5"

class LoginModel {
  LoginModel({
      this.token,});

  LoginModel.fromJson(dynamic json) {
    token = json['token'];
  }
  String? token;
LoginModel copyWith({  String? token,
}) => LoginModel(  token: token ?? this.token,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    return map;
  }
}