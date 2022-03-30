import 'package:betafitness/core.dart';
import 'package:betafitness/utils/color_constants.dart';
import 'package:flutter/rendering.dart';

part 'profile_settings_header.dart';

class ProfileSettingsView extends StatelessWidget {
  const ProfileSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: ColorConstants.kThirdColor,
          ),
          child: Column(
            children: [
              const ProfileSettingsHeader(),
              Padding(padding: EdgeInsets.only(top: 20.h)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: ProfileTextFieldWidget(
                              title: "Firstname",
                              hint: TextConstants.nameHint.split(" ")[0],
                            )),
                        Flexible(
                            flex: 1,
                            child: ProfileTextFieldWidget(
                              title: "Lastname",
                              hint: TextConstants.nameHint.split(" ")[1],
                            )),
                      ],
                    ),
                    const ProfileTextFieldWidget(
                        title: TextConstants.username, hint: "BetaISyn5243"),
                    const ProfileTextFieldWidget(
                      title: "Phone Number",
                      hint: TextConstants.phoneHint,
                    ),
                    Row(
                      children: const [
                        Flexible(
                            flex: 1,
                            child: ProfileTextFieldWidget(
                              title: "Date of Birth",
                              hint: "01-01-2023",
                            )),
                        Flexible(
                            flex: 1,
                            child: ProfileTextFieldWidget(
                              title: "Gender",
                              hint: "male",
                            )),
                      ],
                    ),
                    ProfileTextFieldWidget(
                        title: TextConstants.username, hint: "BetaISyn5243"),
                    ProfileTextFieldWidget(
                        title: TextConstants.username, hint: "BetaISyn5243"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTextFieldWidget extends StatelessWidget {
  const ProfileTextFieldWidget(
      {Key? key, required this.title, required this.hint})
      : super(key: key);
  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: Text(
              title,
              style: TextStyle(
                color: ColorConstants.kFirstColor,
                fontSize: 14.sp,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(fontSize: 14.sp),
              alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.start,
              isCollapsed: false,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintMaxLines: 1,
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 20.h)),
        ],
      ),
    );
  }
}
