class ProductSqlModel {
  ProductSqlModel({
    this.productId,
    this.productJson,});


  String? productId;
  String? productJson;


  ProductSqlModel.fromJson(dynamic json) {
    productId = json['productId'];
    productJson = json['productJson'];

  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productId'] = productId;
    map['productJson'] = productJson;
    return map;
  }

}