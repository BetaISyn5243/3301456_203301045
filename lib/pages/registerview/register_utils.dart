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
