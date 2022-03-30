part of 'profile_view.dart';

class ProfileUserInformationsWidget extends StatelessWidget {
  const ProfileUserInformationsWidget({
    Key? key,
    required this.userInformations,
  }) : super(key: key);

  final List<List<Object>> userInformations;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorConstants.kSecondColor,
        borderRadius: BorderRadius.all(
          Radius.circular(6.r),
        ),
      ),
      height:
          ((userInformations.length * 50) + (userInformations.length - 1) * 0.2)
                  .h +
              20.h,
      width: ScreenUtil().screenWidth * 0.90,
      child: SizedBox(
        height: ((userInformations.length * 50) +
                (userInformations.length - 1) * 0.2)
            .h,
        width: ScreenUtil().screenWidth * 0.85,
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 0),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: userInformations.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, value) => Column(
            children: [
              ProfileTextBoxWidget(
                title: userInformations[value][1] as String,
                description: userInformations[value][2] as String,
                icon: userInformations[value][0] as IconData,
              ),
              value != userInformations.length
                  ? const ProfileSplitWidget()
                  : const Blank(),
            ],
          ),
        ),
      ),
    );
  }
}
