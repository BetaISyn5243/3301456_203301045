part of 'register_view.dart';

class RegisterBodyForm extends StatelessWidget {
  const RegisterBodyForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldWidget(
              labelText: TextConstants.name,
              hintText: TextConstants.nameHint,
              controller: RegisterController.nameController,
              textInputType: TextInputType.name),
          SizedBox(height: 20.h),
          TextFieldWidget(
              labelText: TextConstants.email,
              hintText: TextConstants.emailHint,
              controller: RegisterController.emailController,
              textInputType: TextInputType.emailAddress),
          SizedBox(height: 20.h),
          TextFieldWidget(
            labelText: TextConstants.phone,
            hintText: TextConstants.phoneHint,
            controller: RegisterController.phoneController,
            textInputType: TextInputType.phone,
          ),
          SizedBox(height: 20.h),
          TextFieldWidget(
            labelText: TextConstants.password,
            hintText: TextConstants.passwordHint,
            obscureText: true,
            controller: RegisterController.passwordController1,
            textInputType: TextInputType.visiblePassword,
          ),
          SizedBox(height: 20.h),
          TextFieldWidget(
            labelText: TextConstants.passwordAgain,
            hintText: TextConstants.passwordHint,
            obscureText: true,
            controller: RegisterController.passwordController2,
            textInputType: TextInputType.visiblePassword,
          ),
          SizedBox(height: 20.h),
          const Text(TextConstants.policyAgreement),
          SizedBox(height: 20.h)
        ],
      ),
    );
  }
}
