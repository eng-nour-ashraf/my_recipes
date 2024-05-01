/// value : "policy_ar"

class AppPagesModel {
  AppPagesModel({
      this.value,});

  AppPagesModel.fromJson(dynamic json) {
    value = json['value'];
  }
  String? value;
AppPagesModel copyWith({  String? value,
}) => AppPagesModel(  value: value ?? this.value,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

}