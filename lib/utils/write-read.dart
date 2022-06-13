import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WriteRead{
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  CollectionReference usersTable =
  FirebaseFirestore.instance.collection('users');
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> createUser(String email ,String password,String name,String phone) async {
    var user = await auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await firestore
        .collection("users")
        .doc(user.user!.uid)
        .set({'name': name, 'phone': phone, 'email': email, 'password': password});
  }

  Future<void> addUser(String email ,String password,String name,String phone) => (usersTable.add(
      {'name': name, 'phone': phone, 'email': email, 'password': password}))
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));

}