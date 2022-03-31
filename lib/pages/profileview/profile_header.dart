part of 'profile_view.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      height: 100.h,
      decoration: BoxDecoration(
          color: ColorConstants.kFiveColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.r),
              bottomRight: Radius.circular(30.r))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.account_circle, size: 40.w),
          SizedBox(
            width: 200.w,
            child: Text(
              Users.users.last.name,
              style: TextStyle(fontSize: 20.sp),
            ),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.PROFILESETTINGS);
            },
            icon: Icon(
              Icons.edit_outlined,
              size: 27.w,
            ),
          ),
        ],
      ),
    );
  }
}
