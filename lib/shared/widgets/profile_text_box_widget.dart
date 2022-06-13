import 'package:betafitness/core.dart';
import 'package:betafitness/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTextBoxWidget extends StatelessWidget {
  const ProfileTextBoxWidget(
      {Key? key,
      required this.title,
      required this.description,
      required this.icon})
      : super(key: key);
  final String title;
  final String description;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: ScreenUtil().screenWidth * 0.85,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10.h),
            child: Icon(
              icon,
              size: 30.h,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => {
                  title.toString() == "Invite Friends"
                      ? Get.toNamed(Routes.INVITE)
                      : title.toString() == "User Agreement"
                          ? Get.toNamed(Routes.USERAGREEMENT)
                      : title.toString() == "Settings"
                      ? Get.toNamed(Routes.SETTINGS)
                          : null
                },
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.kFirstTextColor),
                ),
              ),
              (description != "null")
                  ? Text(description,
                      style: const TextStyle(
                          color: ColorConstants.kFirstTextColor))
                  : const SizedBox(height: 0, width: 0),
            ],
          )
        ],
      ),
    );
  }
}
