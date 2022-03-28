part of 'profile_view.dart';

class ProfileSplitWidget extends StatelessWidget {
  const ProfileSplitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth * 0.80,
      color: ColorConstants.kFourthColor,
      height: 0.2.h,
    );
  }
}
