part of 'login_view.dart';

bool loginCredinantalControl() {
  return LoginControllers.emailController.text.toString().isEmail &
      LoginControllers.passwordController.text.toString().isNotEmpty;
}

bool loginUsersControl() {
  return (Users.users.last.email ==
          LoginControllers.emailController.text.toString()) &
      (Users.users.last.password ==
          LoginControllers.passwordController.text.toString());
}
