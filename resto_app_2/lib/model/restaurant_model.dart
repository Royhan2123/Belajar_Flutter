class RestaurantModel {
  final String? id;
  final String? name;
  final String? description;
  final String? pictureId;
  final String? city;
  final double? rating;
  final List<Category>? categories;
  final Menus? menus;
  final List<CustomerReview>? customerReviews;

  const RestaurantModel({
    this.city,
    this.id,
    this.name,
    this.description,
    this.pictureId,
    this.rating,
    this.categories,
    this.menus,
    this.customerReviews,
  });

  factory RestaurantModel.fromJson(Map<dynamic, dynamic> json) => RestaurantModel(
        city: json["city"],
        id: json["id"],
        name: json["name"],
        description: json["description"],
        rating: json["rating"].toDouble(),
        pictureId: json["pictureId"].toString(),
        categories: json.containsKey('categories')
            ? List<Category>.from(json['categories'].map((x) => Category.fromJson(x)))
            : null,
        menus: json.containsKey('menus') ? Menus.fromJson(json['menus']) : null,
        customerReviews: json.containsKey('customerReviews')
            ? List<CustomerReview>.from(json['customerReviews'].map((x) => CustomerReview.fromJson(x)))
            : null,
      );
}

class Category {
  final String name;

  const Category({
    required this.name,
  });

  factory Category.fromJson(Map<dynamic, dynamic> json) => Category(
        name: json["name"],
      );
}

class CustomerReview {
  final String name;
  final String review;
  final String date;

  const CustomerReview({
    required this.name,
    required this.review,
    required this.date,
  });

  factory CustomerReview.fromJson(Map<dynamic, dynamic> json) => CustomerReview(
        name: json["name"],
        review: json["review"],
        date: json["date"],
      );
}
class Menus {
  final List<MenuItem> foods;
  final List<MenuItem> drinks;

  const Menus({
    required this.foods,
    required this.drinks,
  });

  factory Menus.fromJson(Map<dynamic, dynamic> json) => Menus(
        foods: List<MenuItem>.from(json["foods"].map((x) => MenuItem.fromJson(x))),
        drinks: List<MenuItem>.from(json["drinks"].map((x) => MenuItem.fromJson(x))),
      );
}

class MenuItem {
  final String name;

  const MenuItem({
    required this.name,
  });

  factory MenuItem.fromJson(Map<dynamic, dynamic> json) => MenuItem(
        name: json["name"],
      );
}