import 'package:betafitness/core.dart';

class BodyHeader extends StatelessWidget {
  const BodyHeader(
      {Key? key,
      required this.backgroundImagePath,
      required this.title,
      required this.subtitle})
      : super(key: key);

  final String backgroundImagePath, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundImage(),
        titleSubtitle(),
      ],
    );
  }

  Container titleSubtitle() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              ColorConstants.kThirdColor,
              Colors.transparent,
            ]),
      ),
      height: Get.height * 0.55,
      width: Get.width,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            const HeaderReachText(),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: ColorConstants.kFirstTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    subtitle,
                    style: TextStyle(
                        fontSize: 20.sp, color: ColorConstants.kFirstTextColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container backgroundImage() {
    return Container(
      height: Get.height * 0.55,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
