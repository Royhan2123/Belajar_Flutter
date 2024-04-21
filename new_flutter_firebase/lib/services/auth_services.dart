import 'package:dio/dio.dart';
import 'package:new_flutter_firebase/models/login_models.dart';
import 'package:new_flutter_firebase/models/register_models.dart';
import 'package:new_flutter_firebase/models/users_models.dart';

class AuthServices {
  String baseUrl = "https://bwabank.my.id/api";
  final dio = Dio();

  Future<bool> checkEmail(String email) async {
    try {
      final response = await dio.post(
        "$baseUrl/is-email-exist",
        data: {
          "email": email,
        },
      );

      if (response.statusCode == 200) {
        return response.data["is-email-exist"];
      } else {
        return response.data["errors"];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModels> signIn(LoginModels data) async {
    try {
      final response = await dio.post(
        "$baseUrl/login",
        data: {
          data.toJson(),
        },
      );

      if (response.statusCode == 200) {
        UserModels user = UserModels.fromJson(response.data);
        user.copyWith(password: data.password);
        return user;
      } else {
        throw response.data["message"];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModels> signUp(RegisterModels data) async {
    try {
      final response = await dio.post(
        "$baseUrl/register",
        data: {
          data.toJson(),
        },
      );

      if (response.statusCode == 200) {
        UserModels user = UserModels.fromJson(
          response.data,
        );
        user.copyWith(
          password: data.password,
        );
        return user;
      } else {
        return response.data["message"];
      }
    } catch (e) {
      rethrow;
    }
  }
}
