import 'package:betafitness/coregs.dart';
import 'package:betafitness/utils/xcore.dart';

class HeaderReachText extends StatelessWidget {
  const HeaderReachText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: TextConstants.splashFirst,
        style: TextStyle(
            fontFamily: "Bebas", fontSize: 30.sp, letterSpacing: 5.sp),
        children: const <TextSpan>[
          TextSpan(
            text: TextConstants.splashSecond,
            style: TextStyle(color: ColorConstants.kFirstColor),
          )
        ],
      ),
    );
  }
}
