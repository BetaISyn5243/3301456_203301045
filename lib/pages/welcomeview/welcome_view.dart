import 'package:betafitness/core.dart';

import 'xcore.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          WelcomeBackgroundImage(),
          Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  const HeaderReachText(),
                  const Spacer(),
                  WelcomeInfo(),
                  SizedBox(height: 30.h),
                  WelcomeTextButton(1),
                  SizedBox(height: 10.h),
                  WelcomeTextButton(0),
                  SizedBox(height: 27.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
