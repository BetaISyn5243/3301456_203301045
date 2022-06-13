import 'package:betafitness/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Users {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<User?> login(String email, String password) async {
    var user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return user.user;
  }

  Future<User?> createUser(String email, String password,
      UserModel userModel) async {
    var user = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    print(userModel.toString());
    await firestore
        .collection("users")
        .doc(user.user!.uid)
        .set(userModel.toJson());
    return user.user;
  }

  Future<UserModel> getUser() async {
    CollectionReference ref = firestore.collection("users");
    String uid = auth.currentUser!.uid;
    var document = ref.doc(uid);
    var response = await document.get();

    UserModel userModel = UserModel.fromJson(response.data() as dynamic);
    print(    userModel.name
    );
    return userModel;
  }

  Future out() async {
    auth.signOut();
  }
}
