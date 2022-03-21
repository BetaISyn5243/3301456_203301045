import 'package:betafitness/core.dart';
import 'package:betafitness/pages/started/widgets/body_header.dart';
import 'package:betafitness/pages/started/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordView extends StatelessWidget {
  ForgetPasswordView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BodyHeader(
                backgroundImagePath: "assets/images/black/14.jpg",
                title: TextConstants.forgetPassword,
                subtitle: TextConstants.forgetAbout),
            bodyForm(emailController),
            footerButton()
          ],
        ),
      ),
    );
  }

  Widget footerButton() {
    return Center(
      child: Column(
        children: [
          TextButtonWidget(
              title: "Submit", press: () => Get.back(), color2: kFirstColor),
          TextButtonWidget(
              title: "Cancel", press: () => Get.back(), color2: kThirdColor)
        ],
      ),
    );
  }

  Widget bodyForm(TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Column(
        children: [
          TextFieldWidget(
              labelText: "Email",
              hintText: "info@batuhanturgut.com",
              controller: controller,
              textInputType: TextInputType.emailAddress)
        ],
      ),
    );
  }
}
