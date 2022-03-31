import 'package:betafitness/core.dart';

part 'profile_header.dart';
part 'profile_meuns_widget.dart';
part 'profile_split_widget.dart';
part 'profile_user_informations_widget.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);
  final List<List<Object>> userInformations = [
    [Icons.email_outlined, "Email", Users.users.last.email],
    [Icons.phone_outlined, "Phone", Users.users.last.phone],
    [Icons.date_range_outlined, "Birth Of Date", "01-01-2023"]
  ];
  final List<List<Object>> menus = [
    [Icons.redeem, "Invite Friends"],
    [Icons.shield_outlined, "User Agreement"],
    [Icons.settings_outlined, "Settings"]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileHeader(),
            Container(
              height: ScreenUtil().screenHeight * 0.8,
              padding: EdgeInsets.only(top: 20.h),
              width: ScreenUtil().screenWidth * 0.9,
              child: Column(
                children: [
                  ProfileUserInformationsWidget(
                      userInformations: userInformations),
                  Padding(padding: EdgeInsets.only(top: 30.h)),
                  ProfileMenusWidget(menus: menus),
                  Padding(padding: EdgeInsets.only(top: 30.h)),
                  Container(
                    width: ScreenUtil().screenWidth * 0.9,
                    height: 60.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ColorConstants.exitBGColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(6.r),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: const Icon(Icons.exit_to_app_outlined,
                                color: ColorConstants.kFirstIconColor),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.offAllNamed(Routes.WELCOME);
                            },
                            child: Text(
                              TextConstants.signOut,
                              style: TextStyle(
                                  color: ColorConstants.kFirstTextColor,
                                  fontSize: 20.sp),
                            ),
                          )
                        ],
                      ),
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
