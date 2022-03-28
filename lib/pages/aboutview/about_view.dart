import 'package:betafitness/core.dart';

import 'xcore.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kThirdColor,
      body: Stack(
        children: [
          const BackgroundImageWidget(imagePath: ImageConstants.aboutBGPath),
          Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight,
            color: ColorConstants.kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  const HeaderReachText(),
                  const Spacer(),
                  const InfoWidget(
                    title: TextConstants.aboutYou,
                    description: TextConstants.aboutDescription,
                  ),
                  SizedBox(height: 30.h),
                  const AboutOptions(),
                  SizedBox(height: 30.h),
                  const AboutBuildFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
