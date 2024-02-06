import 'package:flutter/material.dart';
import 'package:resto_app/models/restaurant_model.dart';
import 'package:resto_app/pages/detail_restaurant_screen.dart';

class CardRestaurant extends StatelessWidget {
  final RestaurantModel restaurantModel;
  const CardRestaurant({
    required this.restaurantModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailRestaurantScreen(
              restaurantModel: restaurantModel,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 10,
          top: 20,
        ),
        padding: const EdgeInsets.only(
          right: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 228, 228, 228),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 75,
              height: 77,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                image: DecorationImage(
                    image: NetworkImage(restaurantModel.pictureid),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  restaurantModel.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.mode_of_travel_sharp,
                      size: 15,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      restaurantModel.city,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.yellow,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      restaurantModel.rating.toString(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const Expanded(child: Column()),
            const Icon(
              Icons.restaurant_menu,
              size: 30,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
