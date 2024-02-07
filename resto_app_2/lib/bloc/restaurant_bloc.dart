import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:resto_app_2/model/restaurant_model.dart';
import 'package:resto_app_2/services/restaurant_services.dart';

part 'restaurant_event.dart';
part 'restaurant_state.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  RestaurantBloc() : super(RestaurantInitial()) {
    on<RestaurantEvent>((event, emit) async {
      if (event is GetRestaurant) {
        try {
          emit(
            RestaurantLoading(),
          );

          final restaurant = await RestaurantServices().getRestaurant();

          emit(
            RestaurantSucces(restaurant),
          );
        } catch (e) {
          emit(
            RestaurantFailed(
              e.toString(),
            ),
          );
        }
      }
    });
  }
}
