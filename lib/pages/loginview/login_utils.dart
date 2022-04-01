part of 'login_view.dart';

bool loginCredinantalControl() {
  return LoginControllers.emailController.text.toString().isEmail &
      LoginControllers.passwordController.text.toString().isNotEmpty;
}

bool loginUsersControl() {
  return (Users.users.any(
          (e) => e.email == LoginControllers.emailController.text.toString()) &
      (Users.users.any((e) =>
          e.password == LoginControllers.passwordController.text.toString())));
}
