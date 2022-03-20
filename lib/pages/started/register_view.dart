import 'package:betafitness/core.dart';
import 'package:betafitness/pages/started/widgets/body_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();

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
  return BodyHeader(
      title: "Sign Up",
      subtitle: "Train and live the new experience of \nexercising at home",
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
            labelText: "Name", hintText: "Batuhan Turgut", controller: name),
        SizedBox(height: 20),
        TextFieldWidget(
            labelText: "E-mail",
            hintText: "info@batuhanturgut.com.tr",
            controller: email),
        SizedBox(height: 20),
        TextFieldWidget(
          labelText: "Phone",
          hintText: "+90 500-000-00-00",
          controller: phone,
        ),
        SizedBox(height: 20),
        TextFieldWidget(
          labelText: "Password",
          hintText: "*******",
          obscureText: true,
          controller: pass1,
        ),
        SizedBox(height: 20),
        TextFieldWidget(
          labelText: "Password",
          hintText: "*******",
          obscureText: true,
          controller: pass2,
        ),
        SizedBox(height: 20),
        Text(
            "By signing up, I agree to the Beta Fitness User Agreement and Privacy Policy."),
        SizedBox(height: 20)
      ],
    ),
  );
}

Widget actionButton() {
  return Padding(
    padding: EdgeInsets.only(bottom: 50),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _registerButton(),
          _cancelButton(),
        ],
      ),
    ),
  );
}

TextButton _registerButton() {
  return TextButton(
    onPressed: () {},
    child: Container(
      height: 50,
      width: Get.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: kFirstColor,
      ),
      child: Center(
        child: Text(
          "Register",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ),
  );
}

TextButton _cancelButton() {
  return TextButton(
    onPressed: () {
      Get.toNamed(Routes.REGISTER);
    },
    child: Container(
      height: 50,
      width: Get.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: kThirdColor,
          border: Border.all(width: 1, color: kFirstColor)),
      child: Center(
        child: Text(
          "Cancel",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ),
  );
}
