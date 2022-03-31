part of 'register_view.dart';

bool registerCredinantalControl() {
  return RegisterController.emailController.text.toString().isEmail &
      RegisterController.phoneController.text.toString().isPhoneNumber &
      RegisterController.nameController.text.isNotEmpty &
      RegisterController.passwordController1.text.toString().isNotEmpty &
      RegisterController.passwordController2.text.toString().isNotEmpty;
}

bool registerPasswordController() {
  return RegisterController.passwordController1.text.toString() ==
      RegisterController.passwordController2.text.toString();
}
