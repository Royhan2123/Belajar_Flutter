import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:resto_app_2/model/restaurant_model.dart';

class RestaurantServices {
  final baseUrl = "https://restaurant-api.dicoding.dev";

  Future<List<RestaurantModel>> getRestaurant() async {
    final response = await http.get(
      Uri.parse("$baseUrl/list"),
    );

    if (response.statusCode == 200) {
      return List<RestaurantModel>.from(
        jsonDecode(response.body)["message"].map(
          (restaurantModel) => RestaurantModel.fromJson(restaurantModel),
        ),
      );
    } else {
      throw jsonDecode(response.body)["error"];
    }
  }
}
