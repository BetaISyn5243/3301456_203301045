import 'package:betafitness/core.dart';
import 'package:betafitness/utils/Globals.dart' as globals;
import 'package:firebase_auth/firebase_auth.dart';

part 'profile_header.dart';
part 'profile_meuns_widget.dart';
part 'profile_split_widget.dart';
part 'profile_user_informations_widget.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);
  static final List<List<Object>> userInformations = [ [Icons.date_range_outlined, "Birth Of Date", "01-01-2023"]
  ];
  static deneme ()=>Users().getUser().then((value) => userInformations.length<3? userInformations.addAll([
    [Icons.email_outlined, "Email", value.email ],
    [Icons.phone_outlined, "Phone", value.phone],
  ]):null);

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
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        Get.offAllNamed(Routes.WELCOME);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: const Icon(Icons.exit_to_app_outlined,
                                color: ColorConstants.kFirstIconColor),
                          ),
                          Text(
                            TextConstants.signOut,
                            style: TextStyle(
                                color: ColorConstants.kFirstTextColor,
                                fontSize: 20.sp),
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
