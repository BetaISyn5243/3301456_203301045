import 'package:betafitness/core.dart';
import 'package:betafitness/pages/started/widgets/workout_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    List<String> category = [
      "Popular",
      "Hard workout",
      "Full body",
      "Crossfit"
    ];
    List<List<Object>> workouts = [
      ["Dribble Exercises", const AssetImage("assets/images/black/10.jpg")],
      ["Combine Exercises", const AssetImage("assets/images/black/11.jpg")],
      ["Push-Up Exercises", const AssetImage("assets/images/black/12.jpg")],
    ];
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              headerSection(),
              SizedBox(height: 10.h),
              searchBoxWidget(),
              categoryCardWidget(category),
              popularWorkoutWidget(workouts),
            ]),
      ),
    );
  }

  Column popularWorkoutWidget(List<List<Object>> workouts) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Popular Workout",
          style: TextStyle(
              color: Colors.white,
              fontSize: 29.sp,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20.h,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              for (var i = 0; i < workouts.length; i++)
                WorkoutCardWidget(
                    title: workouts[i][0] as String,
                    image: workouts[i][1] as ImageProvider,
                    route: Routes.REGISTER)
            ],
          ),
        )
      ],
    );
  }

  Container searchBoxWidget() {
    return Container(
      alignment: Alignment.center,
      height: 40.h,
      decoration: BoxDecoration(
          color: kSecondColor,
          borderRadius: BorderRadius.all(Radius.circular(30.r))),
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            border: InputBorder.none,
            alignLabelWithHint: true,
            suffixIcon: Icon(Icons.search),
            suffixIconColor: Colors.white,
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 13.sp, height: 1.5.h),
            hintText: TextConstants.searchWorkout,
          ),
        ),
      ),
    );
  }

  Container categoryCardWidget(List<String> category) {
    return Container(
        height: 70.h,
        width: double.infinity,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 30.h,
              alignment: Alignment.center,
              width: ScreenUtil().screenWidth - 40.w,
              child: ValueBuilder<int?>(
                initialValue: 0,
                builder: (value, updateFn) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (var i = 0; i < category.length; i++)
                      CategoryWidget(
                        title: category[i],
                        enable: value == i ? true : false,
                        onTap: () => updateFn(i),
                      ),
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Widget headerSection() {
    return Container(
      height: 255.h,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: TextConstants.hey,
                  style: TextStyle(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w600,
                      color: kFirstColor,
                      letterSpacing: 0.5.sp),
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
                size: 45.sp,
              )
            ],
          ),
          Icon(
            Icons.arrow_circle_right_outlined,
            color: kFirstColor,
            size: 80.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: TextConstants.find,
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600,
                      color: kFirstColor,
                      letterSpacing: 0.5.sp),
                  children: const <TextSpan>[
                    TextSpan(
                      text: " " + TextConstants.yourWorkout,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.arrow_downward_rounded,
                size: 25.sp,
              )
            ],
          ),
        ],
      ),
    );
  }

  Container backgroundImage() {
    return Container(
      height: 300.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/black/3.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
