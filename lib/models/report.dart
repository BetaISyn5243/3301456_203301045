class Report {
  final int? id;
  final String name;
  final String phone;
  final String password;
  final String? username;
  final String? email;

  Report(
      { this.id,
        required this.name,
        required this.phone,
        required this.password,
        this.email, this.username});

  Report.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        name = res["name"],
        phone = res["phone"],
        password = res["password"],
        username = res["username"],
        email = res["email"];

  Map<String, Object?> toMap() {
    return {'id':id,'name': name, 'phone': phone, 'password': password, 'username': username,'email':email};
  }
}