part of 'register_view.dart';

bool registerCredentialControl() {
  return RegisterController.emailController.text.isEmail &&
      RegisterController.phoneController.text.isPhoneNumber &&
      RegisterController.nameController.text.isNotEmpty &&
      RegisterController.passwordController1.text.isNotEmpty &&
      RegisterController.passwordController2.text.isNotEmpty;
}

bool registerPasswordEqualController() {
  return (RegisterController.passwordController1.text) ==
      (RegisterController.passwordController2.text);
}

bool registerCredentialsIsEmpty() {
  return (RegisterController.emailController.text.isEmpty) &&
      (RegisterController.phoneController.text.isEmpty) &&
      (RegisterController.nameController.text.isEmpty) &&
      (RegisterController.usernameController.text.isEmpty) &&
      (RegisterController.passwordController1.text.isEmpty) &&
      (RegisterController.passwordController2.text.isEmpty);
}

bool registerCredentialsIsOkay() {
  (RegisterController.emailController.text.isEmail);
  (RegisterController.phoneController.text.isPhoneNumber);
  return false;
}

Future<bool> registerControl() async {
  try {
    UserModel userModel = UserModel(
        name: RegisterController.nameController.text.toString(),
    phone: RegisterController.phoneController.text.toString(),
        email: RegisterController.emailController.text.toString(),
    password: RegisterController.passwordController1.text.toString(),
    username: RegisterController.usernameController.text.toString()
    );
    print(RegisterController.emailController.text.toString());
    globals.user = await Users().createUser(RegisterController.emailController.text.toString(), RegisterController.passwordController1.text.toString(),userModel);
    globals.fetchInfo();

    if(globals.user == null ){
      throw 'user-not-found';
    }
    DatabaseHandler().initializeDB();
    DatabaseHandler().insertReports([
      Report(
          name: RegisterController.nameController.text.toString(),
          phone: RegisterController.phoneController.text.toString(),
          email: RegisterController.emailController.text.toString(),
          password: RegisterController.passwordController1.text.toString(),
          username: RegisterController.usernameController.text.toString())
    ]);
    Get.back();
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return alertSuccess();
        });
    return true;

  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found' || e.code == 'wrong-password' ) {
      showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return alertCodeBump();
        },
      );
    }
    return false;
  }
}

FirebaseFirestore firestore = FirebaseFirestore.instance;
