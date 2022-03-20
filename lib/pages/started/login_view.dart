// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:betafitness/core.dart';
import 'package:betafitness/pages/started/widgets/body_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BodyHeader(
                title: "Sign In",
                subtitle:
                    "Train and live the new experience of \nexercising at home",
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
                        _loginButton(),
                        _registerButton(),
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

  TextButton _loginButton() {
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
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

  TextButton _registerButton() {
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
            "Sign Up",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
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
          "Forgot your password?",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  Column formLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldWidget(labelText: "E-mail", hintText: "info@batuhanturgut.com.tr",controller: emailController),
        SizedBox(height: 20),
        TextFieldWidget(labelText: "Password", hintText: "*******", obscureText: true,controller: passwordController)
      ],
    );
  }
}
