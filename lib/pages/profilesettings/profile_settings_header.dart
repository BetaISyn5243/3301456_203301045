part of 'profile_settings_view.dart';

class ProfileSettingsHeader extends StatelessWidget {
  const ProfileSettingsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 250.h,
        width: ScreenUtil().screenWidth,
        decoration: BoxDecoration(
            color: ColorConstants.kAppBarBackgroundColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(28.r))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0.w),
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30.h,
                    ),
                  ),
                ),
                Text(
                  "Edit Profile",
                  style: TextStyle(
                      color: ColorConstants.kFirstColor,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 40.w,
                ),
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 90.h,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0.h),
              child: Text(
                "Change Photo Profile",
                style: TextStyle(
                    color: ColorConstants.kFirstColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
