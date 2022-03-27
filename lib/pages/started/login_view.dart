// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:betafitness/core.dart';
import 'package:betafitness/pages/started/widgets/body_header.dart';
import 'package:betafitness/pages/started/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

@immutable
class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BodyHeader(
                title: TextConstants.signIn,
                subtitle: TextConstants.loginAbout,
                backgroundImagePath: "assets/images/black/12.jpg"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  formLogin(),
                  SizedBox(height: 15),
                  forgetButton(),
                  SizedBox(height: 15),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButtonWidget(
                            title: TextConstants.logIn,
                            press: () => Get.offAllNamed(Routes.HOME),
                            color2: ColorConstants.kFirstColor),
                        TextButtonWidget(
                            title: TextConstants.signUp,
                            press: () => Get.toNamed(Routes.REGISTER),
                            color2: ColorConstants.kThirdColor),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Align forgetButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          Get.toNamed(Routes.FORGET_PASSWORD);
        },
        child: Text(
          TextConstants.forgetYourPassword,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  Column formLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldWidget(
            labelText: TextConstants.email,
            hintText: TextConstants.emailHint,
            controller: emailController,
            textInputType: TextInputType.emailAddress),
        SizedBox(height: 20),
        TextFieldWidget(
            labelText: TextConstants.password,
            hintText: TextConstants.passwordHint,
            obscureText: true,
            controller: passwordController,
            textInputType: TextInputType.visiblePassword)
      ],
    );
  }
}
