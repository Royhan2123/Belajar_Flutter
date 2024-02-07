import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:resto_app_2/bloc/restaurant_bloc.dart';
import 'package:resto_app_2/components/card_restaurant.dart';
import 'package:resto_app_2/model/restaurant_model.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  void initState() {
    super.initState();
    context.read<RestaurantBloc>().add(GetRestaurant());
  }

  RestaurantModel? restaurantModel;
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
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Restaurant",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Recommendation restaurant for you!",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              BlocProvider(
                create: (context) => RestaurantBloc()
                  ..add(
                    GetRestaurant(),
                  ),
                child: BlocBuilder<RestaurantBloc, RestaurantState>(
                  builder: (context, state) {
                    if (state is RestaurantSucces) {
                      List<Widget> restaurantWidgets = [];
                      for (var restaurant in state.restaurant) {
                        restaurantWidgets.add(
                          CardRestaurant(
                            restaurantModel: restaurant,
                          ),
                        );
                      }
                      return Column(
                        children: restaurantWidgets,
                      );
                    } else if (state is RestaurantLoading) {
                      return Center(
                        child: Lottie.asset(
                          "assets/loading.json",
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      );
                    } else if (state is RestaurantFailed) {
                      return Center(
                        child: Lottie.asset(
                          "assets/failed.json",
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      );
                    } else {
                      return Center(
                        child: Lottie.asset(
                          "assets/failed.json",
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
