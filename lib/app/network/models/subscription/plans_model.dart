/// plans : [{"id":2,"image":"https://saada-app.com/storage/images/plans/default.png","name":"الباقة البرونزية","duration":"١ شهر","price":"499","features":["علامة مميزة وتعزيز الظهور","التحدث مع الأعضاء"],"premium_account":1,"advanced_filter":0,"compatibility_test":0,"relation_specialist_consulting":0,"fiances_helping":0,"chatting":1},{"id":3,"image":"https://saada-app.com/storage/images/plans/default.png","name":"الباقة الفضية","duration":"٣ شهور","price":"1499","features":["علامة مميزة وتعزيز الظهور","البحث بتفاصيل محددة","التحدث مع الأعضاء"],"premium_account":1,"advanced_filter":1,"compatibility_test":0,"relation_specialist_consulting":0,"fiances_helping":0,"chatting":1},{"id":4,"image":"https://saada-app.com/storage/images/plans/default.png","name":"الباقة الذهبية","duration":"٦ شهور","price":"1999","features":["علامة مميزة وتعزيز الظهور","البحث بتفاصيل محددة","اختبار التوافق","استشارة مختص علاقات زوجية قبل او بعد الزواج","مساعدة الخاطبات حتي من خارج التطبيق لإيجاد شريك يناسبك حتي اربع مرات اي نوع زواج","التحدث مع الأعضاء"],"premium_account":1,"advanced_filter":1,"compatibility_test":1,"relation_specialist_consulting":1,"fiances_helping":1,"chatting":1}]

class PlansModel {
  PlansModel({
      this.plans,});

  PlansModel.fromJson(dynamic json) {
    if (json['plans'] != null) {
      plans = [];
      json['plans'].forEach((v) {
        plans?.add(Plans.fromJson(v));
      });
    }
  }
  List<Plans>? plans;
PlansModel copyWith({  List<Plans>? plans,
}) => PlansModel(  plans: plans ?? this.plans,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (plans != null) {
      map['plans'] = plans?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2
/// image : "https://saada-app.com/storage/images/plans/default.png"
/// name : "الباقة البرونزية"
/// duration : "١ شهر"
/// price : "499"
/// features : ["علامة مميزة وتعزيز الظهور","التحدث مع الأعضاء"]
/// premium_account : 1
/// advanced_filter : 0
/// compatibility_test : 0
/// relation_specialist_consulting : 0
/// fiances_helping : 0
/// chatting : 1

class Plans {
  Plans({
      this.id, 
      this.image, 
      this.name, 
      this.duration, 
      this.price, 
      this.features, 
      this.premiumAccount, 
      this.advancedFilter, 
      this.compatibilityTest, 
      this.relationSpecialistConsulting, 
      this.fiancesHelping, 
      this.chatting,});

  Plans.fromJson(dynamic json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    duration = json['duration'];
    price = json['price'];
    features = json['features'] != null ? json['features'].cast<String>() : [];
    premiumAccount = json['premium_account'];
    advancedFilter = json['advanced_filter'];
    compatibilityTest = json['compatibility_test'];
    relationSpecialistConsulting = json['relation_specialist_consulting'];
    fiancesHelping = json['fiances_helping'];
    chatting = json['chatting'];
  }
  num? id;
  String? image;
  String? name;
  String? duration;
  String? price;
  List<String>? features;
  num? premiumAccount;
  num? advancedFilter;
  num? compatibilityTest;
  num? relationSpecialistConsulting;
  num? fiancesHelping;
  num? chatting;
Plans copyWith({  num? id,
  String? image,
  String? name,
  String? duration,
  String? price,
  List<String>? features,
  num? premiumAccount,
  num? advancedFilter,
  num? compatibilityTest,
  num? relationSpecialistConsulting,
  num? fiancesHelping,
  num? chatting,
}) => Plans(  id: id ?? this.id,
  image: image ?? this.image,
  name: name ?? this.name,
  duration: duration ?? this.duration,
  price: price ?? this.price,
  features: features ?? this.features,
  premiumAccount: premiumAccount ?? this.premiumAccount,
  advancedFilter: advancedFilter ?? this.advancedFilter,
  compatibilityTest: compatibilityTest ?? this.compatibilityTest,
  relationSpecialistConsulting: relationSpecialistConsulting ?? this.relationSpecialistConsulting,
  fiancesHelping: fiancesHelping ?? this.fiancesHelping,
  chatting: chatting ?? this.chatting,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image'] = image;
    map['name'] = name;
    map['duration'] = duration;
    map['price'] = price;
    map['features'] = features;
    map['premium_account'] = premiumAccount;
    map['advanced_filter'] = advancedFilter;
    map['compatibility_test'] = compatibilityTest;
    map['relation_specialist_consulting'] = relationSpecialistConsulting;
    map['fiances_helping'] = fiancesHelping;
    map['chatting'] = chatting;
    return map;
  }

}