import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference usersTable =
      FirebaseFirestore.instance.collection('users');

  Future<void> addUser() => (usersTable.add(
          {'name': name, 'phone': phone, 'email': email, 'password': password}))
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
  //final String id;
  int _id = 0;
  final String name;
  final String username;

  final String phone;
  final String email;
  final String password;

  User(
      {required this.name,
      required this.phone,
      required this.password,
      required this.email,
      required this.username}) {
    _id++;
    //  addUser();
  }

  get id => _id;
}
