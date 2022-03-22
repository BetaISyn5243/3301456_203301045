import 'package:betafitness/core.dart';
import 'package:betafitness/pages/started/widgets/body_header.dart';
import 'package:betafitness/pages/started/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

@immutable
class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController1 = TextEditingController();
  final TextEditingController passwordController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            bodyHeader(),
            bodyForm(nameController, emailController, phoneController,
                passwordController1, passwordController2),
            actionButton()
          ],
        ),
      ),
    );
  }
}

Widget bodyHeader() {
  return const BodyHeader(
      title: TextConstants.signUp,
      subtitle: TextConstants.registerAbout,
      backgroundImagePath: "assets/images/black/4.jpg");
}

Widget bodyForm(
    TextEditingController name,
    TextEditingController email,
    TextEditingController phone,
    TextEditingController pass1,
    TextEditingController pass2) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldWidget(
            labelText: TextConstants.name,
            hintText: TextConstants.nameHint,
            controller: name,
            textInputType: TextInputType.name),
        const SizedBox(height: 20),
        TextFieldWidget(
            labelText: TextConstants.email,
            hintText: TextConstants.emailHint,
            controller: email,
            textInputType: TextInputType.emailAddress),
        const SizedBox(height: 20),
        TextFieldWidget(
          labelText: TextConstants.phone,
          hintText: TextConstants.phoneHint,
          controller: phone,
          textInputType: TextInputType.phone,
        ),
        const SizedBox(height: 20),
        TextFieldWidget(
          labelText: TextConstants.password,
          hintText: TextConstants.passwordHint,
          obscureText: true,
          controller: pass1,
          textInputType: TextInputType.visiblePassword,
        ),
        const SizedBox(height: 20),
        TextFieldWidget(
          labelText: TextConstants.passwordAgain,
          hintText: TextConstants.passwordHint,
          obscureText: true,
          controller: pass2,
          textInputType: TextInputType.visiblePassword,
        ),
        const SizedBox(height: 20),
        const Text(TextConstants.policyAgreement),
        const SizedBox(height: 20)
      ],
    ),
  );
}

Widget actionButton() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 50),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButtonWidget(
              title: TextConstants.register, press: () =>Get.offAllNamed(Routes.HOME), color2: kFirstColor),
          TextButtonWidget(
              title: TextConstants.cancel,
              press: () => Get.back(),
              color2: kThirdColor)
        ],
      ),
    ),
  );
}
