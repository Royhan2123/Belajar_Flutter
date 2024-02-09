class RestaurantModel {
  final String? id;
  final String? name;
  final String? description;
  final String? pictureId;
  final String? city;
  final String? address;
  final double? rating;
  final Category? category;
  final Menu? menu;
  final CustomerReview? customerReview;

  RestaurantModel({
     this.id,
     this.name,
     this.description,
     this.pictureId,
     this.city,
     this.address,
     this.rating,
    this.category,
    this.menu,
    this.customerReview,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      pictureId: json['pictureId'],
      city: json['city'],
      address: json['address'],
      rating: json['rating'].toDouble(),
      category: json["categories"] == null
          ? null
          : Category.fromJson(
              json["categories"],
            ),
      menu: json["menus"] == null
          ? null
          : Menu.fromJson(
              json["menus"],
            ),
      customerReview: json["customerReviews"] == null
          ? null
          : CustomerReview.fromJson(
              json["customerReviews"],
            ),
    );
  }
}

class Category {
  final String name;

  Category({required this.name});

  factory Category.fromJson(dynamic json) {
    return Category(
      name: json['name'],
    );
  }
}

class Menu {
  final List<Food> foods;
  final List<Drink> drinks;

  Menu({required this.foods, required this.drinks});

  factory Menu.fromJson(Map<String,dynamic>json) {
    return Menu(foods: json["foods"], drinks: json["drinks"],);
  }
}

class Food {
  final String name;

  Food({required this.name});

  factory Food.fromJson(dynamic json) {
    return Food(
      name: json['name'],
    );
  }
}

class Drink {
  final String name;

  Drink({required this.name});

  factory Drink.fromJson(dynamic json) {
    return Drink(
      name: json['name'],
    );
  }
}

class CustomerReview {
  final String name;
  final String review;
  final String date;

  CustomerReview({
    required this.name,
    required this.review,
    required this.date,
  });

  factory CustomerReview.fromJson(dynamic json) {
    return CustomerReview(
      name: json['name'],
      review: json['review'],
      date: json['date'],
    );
  }
}
