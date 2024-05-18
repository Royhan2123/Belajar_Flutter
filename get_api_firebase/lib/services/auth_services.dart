import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_api_firebase/model/user_model.dart';
import 'package:get_api_firebase/services/user_services.dart';

class Authservices {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    String hobby = "",
  }) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      UserModel user = UserModel(
        id: userCredential.user!.uid,
        name: name,
        email: email,
      );
      await UserServices().setUser(
        user,
      );

      return user;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      UserModel user = await UserServices().dataId(
        userCredential.user!.uid,
      );
      return user;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<void> signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      throw e.toString();
    }
  }
}
