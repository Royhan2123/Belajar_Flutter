import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resto_app/models/restaurant_model.dart';
import 'package:resto_app/pages/card_restaurant.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  late Future<List<RestaurantModel>> _restaurantListFuture;

  @override
  void initState() {
    super.initState();
    _restaurantListFuture = fetchRestaurantsFromJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Restaurant Screen",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        leading: const Icon(
          Icons.restaurant_menu_rounded,
          color: Colors.black,
          size: 20,
        ),
      ),
      body: FutureBuilder<List<RestaurantModel>>(
        future: _restaurantListFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            final List<RestaurantModel>? restaurants = snapshot.data;
            return ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              children: [
                const Text(
                  "Restaurant",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  "Recommendation restaurant for you!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                if (restaurants != null)
                  for (var restaurant in restaurants)
                    CardRestaurant(restaurantModel: restaurant),
              ],
            );
          }
        },
      ),
    );
  }

  Future<List<RestaurantModel>> fetchRestaurantsFromJson() async {
    final String response =
        await rootBundle.loadString('assets/local_restaurant.json');
    final List<dynamic> data = json.decode(response)['restaurants'];
    return data.map((json) => RestaurantModel.fromJson(json)).toList();
  }
}
