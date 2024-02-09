import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:resto_app_2/model/restaurant_model.dart';


 class RestaurantService {
  final String baseUrl = "https://restaurant-api.dicoding.dev";

  Future<List<RestaurantModel>> getRestaurantList() async {
    final response = await http.get(
      Uri.parse("$baseUrl/list"),
    );

    if (response.statusCode == 200) {
      List<dynamic> restaurantJsonList =
          jsonDecode(response.body)["restaurants"];
      return List<RestaurantModel>.from(
        restaurantJsonList.map(
          (restaurantModel) => RestaurantModel.fromJson(restaurantModel),
        ),
      );
    } else {
      throw jsonDecode(response.body)["error"];
    }
  }
}
