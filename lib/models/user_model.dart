class UserModel {
  String name =" ";
  String username = " ";
  String email = " ";
  String password = " ";
  String phone = " ";

  UserModel({
    required String name,
    required String username,
    required String email,
    required String password,
    required String phone,
  }) {
    this.name = name;
    this.username = username;
    this.email = email;
    this.password = password;
    this.phone = phone;
  }

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['username'] = username;
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    return data;
  }
}
