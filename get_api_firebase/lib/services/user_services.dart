import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_api_firebase/model/user_model.dart';

class UserServices {
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection(
    "user",
  );

  Future<void> setUser(UserModel user) async {
    try {
      collectionReference.doc(user.id).set(
        {"email": user.email, "name": user.name, "balance": user.balance},
      );
    } catch (e) {
      throw e.toString();
    }
  }

  Future<UserModel> dataId(String id) async {
    try {
      DocumentSnapshot documentSnapshot =
          await collectionReference.doc(id).get();

      return UserModel(
        id: id,
        name: documentSnapshot["name"],
        email: documentSnapshot["email"],
        balance: documentSnapshot["balance"],
      );
    } catch (e) {
      throw e.toString();
    }
  }
}
