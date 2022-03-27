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
    return Container(
      height: 50.h,
      width: ScreenUtil().screenWidth * 0.85,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10.h),
            child: Icon(
              icon,
              size: 30.w,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              (description != "null")
                  ? Text(description)
                  : SizedBox(height: 0, width: 0),
            ],
          )
        ],
      ),
    );
  }
}
