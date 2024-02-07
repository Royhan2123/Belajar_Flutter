part of 'restaurant_bloc.dart';

sealed class RestaurantState extends Equatable {
  const RestaurantState();

  @override
  List<Object> get props => [];
}

final class RestaurantInitial extends RestaurantState {}

final class RestaurantLoading extends RestaurantState {}

final class RestaurantSucces extends RestaurantState {
  final List<RestaurantModel> restaurant;

  const RestaurantSucces(this.restaurant);

  @override
  List<Object> get props => [restaurant];
}

final class RestaurantFailed extends RestaurantState {
  final String error;
  const RestaurantFailed(this.error);

  @override
  List<Object> get props => [error];
}
