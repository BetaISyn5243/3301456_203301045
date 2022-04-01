class User {
  //final String id;
  int _id = 0;
  final String name;
  final String phone;
  final String email;
  final String password;

  User({
    required this.name,
    required this.phone,
    required this.password,
    required this.email,
  }) {
    _id++;
  }

  get id => _id;
}
