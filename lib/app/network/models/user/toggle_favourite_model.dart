/// is_favourite : 1

class ToggleFavouriteModel {
  ToggleFavouriteModel({
      this.isFavourite,});

  ToggleFavouriteModel.fromJson(dynamic json) {
    isFavourite = json['is_favourite'];
  }
  num? isFavourite;
ToggleFavouriteModel copyWith({  num? isFavourite,
}) => ToggleFavouriteModel(  isFavourite: isFavourite ?? this.isFavourite,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['is_favourite'] = isFavourite;
    return map;
  }

}