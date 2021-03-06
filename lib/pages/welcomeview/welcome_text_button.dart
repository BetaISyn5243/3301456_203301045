part of 'welcome_view.dart';

class WelcomeTextButton extends StatelessWidget {
  const WelcomeTextButton({Key? key, required this.val}) : super(key: key);
  final int val;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Get.toNamed(val == 0 ? Routes.LOGIN : Routes.ABOUT),
      child: Container(
        decoration: val == 0
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(25.sp),
                color: Colors.transparent,
                border: Border.all(width: 2.w, color: Colors.white))
            : BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
                color: ColorConstants.kFirstColor,
              ),
        height: 50.h,
        width: ScreenUtil().screenWidth * 0.7,
        child: Center(
          child: Text(
            val == 0 ? TextConstants.logIn : TextConstants.tryNow,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
