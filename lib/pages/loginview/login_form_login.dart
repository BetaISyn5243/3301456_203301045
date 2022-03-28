part of 'login_view.dart';

class LoginFormLogin extends StatelessWidget {
  const LoginFormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldWidget(
            labelText: TextConstants.email,
            hintText: TextConstants.emailHint,
            controller: LoginControllers.emailController,
            textInputType: TextInputType.emailAddress),
        SizedBox(height: 20.h),
        TextFieldWidget(
            labelText: TextConstants.password,
            hintText: TextConstants.passwordHint,
            obscureText: true,
            controller: LoginControllers.passwordController,
            textInputType: TextInputType.visiblePassword)
      ],
    );
  }
}
