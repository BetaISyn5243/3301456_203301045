part of 'profile_view.dart';

class ProfileMenusWidget extends StatelessWidget {
  const ProfileMenusWidget({
    Key? key,
    required this.menus,
  }) : super(key: key);

  final List<List<Object>> menus;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.kSecondColor,
        borderRadius: BorderRadius.all(
          Radius.circular(6.r),
        ),
      ),
      width: ScreenUtil().screenWidth * 0.9,
      height: ((menus.length * 50) + (menus.length - 1) * 0.2).h + 20.h,
      alignment: Alignment.center,
      child: SizedBox(
        height: ((menus.length * 50) + (menus.length - 1) * 0.2).h,
        width: ScreenUtil().screenWidth * 0.85,
        child: ListView.builder(
            padding: const EdgeInsets.only(top: 0),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: menus.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, value) {
              return Column(
                children: [
                  ProfileTextBoxWidget(
                    title: menus[value][1] as String,
                    description: "null",
                    icon: menus[value][0] as IconData,
                  ),
                  value != menus.length
                      ? const ProfileSplitWidget()
                      : const Blank(),
                ],
              );
            }),
      ),
    );
  }
}
