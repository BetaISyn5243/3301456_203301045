import 'package:betafitness/coregs.dart';
import 'package:betafitness/utils/xcore.dart';

class AboutBuildFooter extends StatelessWidget {
  const AboutBuildFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () => Get.back(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Center(
              child: Text(
                TextConstants.back,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Container(
            height: 40.h,
            width: 130.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: ColorConstants.kFirstColor,
            ),
            child: Center(
              child: Text(
                TextConstants.next,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
