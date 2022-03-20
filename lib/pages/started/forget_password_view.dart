import 'package:betafitness/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerWidget(),
            bodyForm(),
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
                TextButton(
                    onPressed: () => Get.back(),
                    child: Container(
                      decoration: BoxDecoration(
                          color: kFirstColor,
                          borderRadius: BorderRadius.circular(5)),
                      height: 50,
                      width: Get.width * 0.7,
                      child: Center(
                          child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    )),
                TextButton(
                    onPressed: () => Get.back(),
                    child: Container(
                      decoration: BoxDecoration(
                          color: kFirstColor,
                          border: Border.all(color: kFirstColor),
                          borderRadius: BorderRadius.circular(5)),
                      height: 50,
                      width: Get.width * 0.7,
                      child: Center(
                          child: Text(
                        "Cancel",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    )),
              ],
            ),
          );
  }

  Widget bodyForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Column(
        children: [
          Text(
            "Email",
            style: TextStyle(fontSize: 18, color: Color(0xFF707070)),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "info@batuhanturgut.com.tr",
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF707070))),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF707070)))),
          )
        ],
      ),
    );
  }

  Widget headerWidget() {
    return Stack(
      children: [
        Container(
          height: Get.height * 0.55,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/black/14.jpg"),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [kThirdColor, Colors.transparent])),
          height: Get.height * 0.55,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                      text: 'HARD\t',
                      style: TextStyle(
                          fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
                      children: [
                        TextSpan(
                            text: 'ELEMENT',
                            style: TextStyle(color: kFirstColor))
                      ]),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Forget Password',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Train and live the new experiance of \nexercising"
                        " at home",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
