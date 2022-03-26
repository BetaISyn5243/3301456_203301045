import 'package:betafitness/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);
  List<List<Object>> userInformation = [
    [Icons.email_outlined, "Email", "info@batuhanturgut.com.tr"],
    [Icons.phone_outlined, "Phone", "+90-500-000-00-00"],
    [Icons.date_range_outlined, "Birth Of Date", "01-01-2023"]
  ];
  List<List<Object>> menus = [
    [Icons.redeem, "Invite Friends"],
    [Icons.shield_outlined, "User Agreement"],
    [Icons.settings_outlined, "Settings"]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget(),
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: ScreenUtil().screenWidth,
              height: 100.h,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.account_circle),
                  Container(
                    width: 200.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("data"),
                        Text("data"),
                      ],
                    ),
                  ),
                  Icon(Icons.ac_unit_rounded)
                ],
              ),
            ),
            Container(
              height: ScreenUtil().screenHeight * 0.7,
              padding: EdgeInsets.only(top: 20.h),
              width: ScreenUtil().screenWidth * 0.9,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: kSecondColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(6.r),
                      ),
                    ),
                    child: SizedBox(
                      height: 150.h,
                      width: ScreenUtil().screenWidth * 0.85,
                      child: ListView.builder(
                          padding: EdgeInsets.only(top: 0),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, value) {
                            return Column(
                              children: [
                                ProfileTextBoxWidget(
                                  title: userInformation[value][1] as String,
                                  description:
                                      userInformation[value][2] as String,
                                  icon: userInformation[value][0] as IconData,
                                ),
                                Container(
                                  width: ScreenUtil().screenWidth * 0.80,
                                  color: Color(0xFF707070),
                                  height: 0.2.h,
                                ),
                              ],
                            );
                          }),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 30.h)),
                  Container(
                    decoration: BoxDecoration(
                      color: kSecondColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(6.r),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 150.h,
                      width: ScreenUtil().screenWidth * 0.85,
                      child: ListView.builder(
                          padding: EdgeInsets.only(top: 0),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, value) {
                            return Column(
                              children: [
                                ProfileTextBoxWidget(
                                  title: menus[value][1] as String,
                                  description: "null",
                                  icon: menus[value][0] as IconData,
                                ),
                                Container(
                                  width: ScreenUtil().screenWidth * 0.80,
                                  color: Color(0xFF707070),
                                  height: 0.2.h,
                                ),
                              ],
                            );
                          }),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30.h),
                    child: ProfileTextBoxWidget(
                      title: "adsşlfkjas",
                      description: "null",
                      icon: (Icons.account_circle),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
