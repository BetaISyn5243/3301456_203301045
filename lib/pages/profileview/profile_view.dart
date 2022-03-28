import 'package:betafitness/core.dart';

part 'profile_meuns_widget.dart';
part 'profile_split_widget.dart';
part 'profile_user_informations_widget.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);
  List<List<Object>> userInformations = [
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
      backgroundColor: ColorConstants.kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: ScreenUtil().screenWidth,
              height: 100.h,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.account_circle),
                  Container(
                    width: 200.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("data"),
                        Text("data"),
                      ],
                    ),
                  ),
                  const Icon(Icons.ac_unit_rounded)
                ],
              ),
            ),
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
                    height: 50.h,
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
                            child: Icon(Icons.exit_to_app_outlined,
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
