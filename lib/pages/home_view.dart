import 'package:betafitness/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            homeBackground(),
          ],
        ),
      ),
    );
  }

  Widget homeBackground() {
    return Stack(
      children: [
        backgroundImage(),
        contextMenu(),
      ],
    );
  }

  Container contextMenu() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              kThirdColor,
              Colors.transparent,
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(children: [
          headerSection(),
          SizedBox(height: 10,),
          Container(
            height: Get.height * 0.07,
            decoration: BoxDecoration(
                color: kSecondColor,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(TextConstants.searchWorkout), Icon(Icons.search)],
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget headerSection() {
    return Container(
      height: Get.height * 0.49,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: const TextSpan(
                  text: TextConstants.hey,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: kFirstColor,
                      letterSpacing: 0.5),
                  children: <TextSpan>[
                    TextSpan(
                      text: " " + TextConstants.username,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.account_circle,
                size: 40,
              )
            ],
          ),
          Icon(
            Icons.arrow_circle_right_outlined,
            color: kFirstColor,
            size: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: const TextSpan(
                  text: TextConstants.find,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: kFirstColor,
                      letterSpacing: 0.5),
                  children: <TextSpan>[
                    TextSpan(
                      text: " " + TextConstants.yourWorkout,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.arrow_downward_rounded,
                size: 25,
              )
            ],
          ),
        ],
      ),
    );
  }

  Container backgroundImage() {
    return Container(
      height: Get.height * 0.55,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/black/3.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
