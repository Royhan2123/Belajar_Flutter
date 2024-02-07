class RestaurantModel {
  final String? id;
  final String? name;
  final String? description;
  final String? pictureId;
  final String? city;
  final int? rating;

  const RestaurantModel({
      this.city,
      this.id,
      this.name,
      this.description,
      this.pictureId,
      this.rating,
  });

  factory RestaurantModel.fromJson(Map<String,dynamic>json) => RestaurantModel(
    city: json["city"],
    id: json["id"],
    name: json["name"],
    description: json["description"],
    rating: json["rating"],
    pictureId: json["pictureId"],
  );
}
