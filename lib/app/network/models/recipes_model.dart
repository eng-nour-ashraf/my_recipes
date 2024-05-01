/// id : "53314247ff604d44808b4569"
/// fats : "5 g"
/// name : "Moroccan Skirt Steak "
/// image : "https://img.hellofresh.com/w_1080,f_webp,q_auto/hellofresh_s3/image/schwedische-frikadellen-mit-kartoffelstampf-5c8d2614.jpg"
/// carbos : "26 g"
/// fibers : ""
/// rating : 1
/// ratings : 1
/// calories : "397 kcal"
/// headline : "with Spinach and Lemon Couscous"
/// proteins : "31 g"
/// favorites : 13
/// difficulty : 0
/// description : "Close your eyes, open up your Ras El Hanout and inhale deeply. You are no longer standing in your kitchen. Around you are the sounds of a bustling market. Robed men sell ornate carpets and a camel nibbles affectionately at your ear.  OK, we’re pretty sure Paul McKenna’s job is safe for now, but get cooking this recipe and take dinnertime on a magic carpet ride to Casablanca! Our tip for this recipe is to take your meat out of the fridge at least 30 minutes before dinner which will allow you to cook it more evenly."
/// ingredients : ["1 Lemon","1 Fillet Skirt Steak","1 Tsp Ras El Hanout","1 Clove Garlic","1 Spring Onion","1/2 Cup Carrot","1 Red Pepper","150g Couscous","A Handful Baby Spinach Leaves","4 Tbsps Coriander"]

class RecipesModel {
  RecipesModel({
      this.id, 
      this.fats, 
      this.name, 
      this.isFavourite = false,
      this.image,
      this.carbos, 
      this.fibers, 
      this.rating, 
      this.ratings, 
      this.calories, 
      this.headline, 
      this.proteins, 
      this.favorites, 
      this.difficulty, 
      this.description, 
      this.ingredients,});

  RecipesModel.fromJson(dynamic json) {
    id = json['id'];
    fats = json['fats'];
    name = json['name'];
    image = json['image'];
    carbos = json['carbos'];
    fibers = json['fibers'];
    rating = json['rating'];
    ratings = json['ratings'];
    calories = json['calories'];
    headline = json['headline'];
    proteins = json['proteins'];
    favorites = json['favorites'];
    difficulty = json['difficulty'];
    description = json['description'];
    ingredients = json['ingredients'] != null ? json['ingredients'].cast<String>() : [];
  }
  String? id;
  String? fats;
  String? name;
  String? image;
  String? carbos;
  String? fibers;
  num? rating;
  num? ratings;
  bool isFavourite = false;
  String? calories;
  String? headline;
  String? proteins;
  num? favorites;
  num? difficulty;
  String? description;
  List<String>? ingredients;
RecipesModel copyWith({  String? id,
  String? fats,
  String? name,
  String? image,
  String? carbos,
  String? fibers,
  num? rating,
  num? ratings,
  String? calories,
  String? headline,
  String? proteins,
  num? favorites,
  num? difficulty,
  String? description,
  List<String>? ingredients,
}) => RecipesModel(  id: id ?? this.id,
  fats: fats ?? this.fats,
  name: name ?? this.name,
  image: image ?? this.image,
  carbos: carbos ?? this.carbos,
  fibers: fibers ?? this.fibers,
  rating: rating ?? this.rating,
  ratings: ratings ?? this.ratings,
  calories: calories ?? this.calories,
  headline: headline ?? this.headline,
  proteins: proteins ?? this.proteins,
  favorites: favorites ?? this.favorites,
  difficulty: difficulty ?? this.difficulty,
  description: description ?? this.description,
  ingredients: ingredients ?? this.ingredients,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['fats'] = fats;
    map['name'] = name;
    map['image'] = image;
    map['carbos'] = carbos;
    map['fibers'] = fibers;
    map['rating'] = rating;
    map['ratings'] = ratings;
    map['calories'] = calories;
    map['headline'] = headline;
    map['proteins'] = proteins;
    map['favorites'] = favorites;
    map['difficulty'] = difficulty;
    map['description'] = description;
    map['ingredients'] = ingredients;
    return map;
  }

}