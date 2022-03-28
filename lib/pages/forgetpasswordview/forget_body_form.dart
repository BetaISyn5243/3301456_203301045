part of 'forget_password_view.dart';

class ForgetBodyForm extends StatelessWidget {
  const ForgetBodyForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
      child: Column(
        children: [
          TextFieldWidget(
              labelText: TextConstants.email,
              hintText: TextConstants.emailHint,
              controller: ForgetController.emailController,
              textInputType: TextInputType.emailAddress)
        ],
      ),
    );
  }
}
