class RestaurantModel {
  final String id;
  final String name;
  final String description;
  final String pictureid;
  final String city;
  final int rating;
  final Menu menus;

  const RestaurantModel({
    required this.city,
    required this.id,
    required this.name,
    required this.pictureid,
    required this.rating,
    required this.description,
    required this.menus,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      RestaurantModel(
        city: json["city"],
        id: json["id"],
        name: json["name"],
        pictureid: json["pictureId"],
        rating: json["rating"],
        description: json["description"],
        menus: Menu.fromJson(
          json["menus"],
        ),
      );
}

class Menu {
  final List<Food> foods;
  final List<Drink> drinks;

  const Menu({
    required this.drinks,
    required this.foods,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        drinks: json["drinks"],
        foods: json["foods"],
      );
}

class Drink {
  final String name;

  const Drink({required this.name});

  factory Drink.fromJson(Map<String, dynamic> json) => Drink(
        name: json["name"],
      );
}

class Food {
  final String name;

  const Food({required this.name});

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        name: json["name"],
      );
}
