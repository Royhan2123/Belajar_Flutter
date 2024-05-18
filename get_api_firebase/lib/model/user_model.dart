import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final int balance;

  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.balance = 0,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        balance,
      ];
}
