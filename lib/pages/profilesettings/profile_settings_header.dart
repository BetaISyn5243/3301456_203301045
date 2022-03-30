part of 'profile_settings_view.dart';

class ProfileSettingsHeader extends StatelessWidget {
  const ProfileSettingsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.h,
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
          color: ColorConstants.kAppBarBackgroundColor,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(28.r))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.insert_emoticon_sharp),
              Text("asd"),
              Container(),
            ],
          ),
          Icon(Icons.insert_emoticon_sharp),
          Text("mahmut ekrem abasıyanık"),
        ],
      ),
    );
  }
}
