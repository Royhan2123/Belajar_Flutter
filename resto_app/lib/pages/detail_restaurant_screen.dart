import 'package:flutter/material.dart';
import 'package:resto_app/models/restaurant_model.dart';

class DetailRestaurantScreen extends StatelessWidget {
  final RestaurantModel restaurantModel;
  const DetailRestaurantScreen({
    required this.restaurantModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Detail Restaurant Screen",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        children: [
          Container(
            width: double.maxFinite,
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  restaurantModel.pictureid.toString(),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(restaurantModel.name),
          const SizedBox(
            height: 10,
          ),
          Text(restaurantModel.city),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Descripsi",
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            restaurantModel.description,
          ),
        ],
      ),
    );
  }
}
