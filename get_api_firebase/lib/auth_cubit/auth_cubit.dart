import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_api_firebase/model/user_model.dart';
import 'package:get_api_firebase/services/auth_services.dart';
import 'package:get_api_firebase/services/user_services.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp({
    required String name,
    required String email,
    required String password,
    String hobby = '',
  }) async {
    try {
      emit(
        AuthLoading(),
      );

      UserModel user = await Authservices().signUp(
        email: email,
        password: password,
        name: name,
        hobby: hobby,
      );

      emit(
        AuthSucces(user),
      );
    } catch (e) {
      emit(
        AuthFailed(
          e.toString(),
        ),
      );
    }
  }

  void signIn({
    required String email,
    required String password,
  }) async {
    try {
      emit(
        AuthLoading(),
      );
      UserModel user = await Authservices().signIn(
        email: email,
        password: password,
      );

      emit(
        AuthSucces(user),
      );
    } catch (e) {
      emit(
        AuthFailed(
          e.toString(),
        ),
      );
    }
  }

  void signOut() async {
    try {
      emit(
        AuthLoading(),
      );
      await Authservices().signOut();
      emit(
        AuthInitial(),
      );
    } catch (e) {
      emit(
        AuthFailed(
          e.toString(),
        ),
      );
    }
  }

  void dataId(String id) async {
    try {
      emit(
        AuthLoading(),
      );
      UserModel user = await UserServices().dataId(
        id,
      );
      emit(
        AuthSucces(user),
      );
    } catch (e) {
      emit(
        AuthFailed(
          e.toString(),
        ),
      );
    }
  }
}
