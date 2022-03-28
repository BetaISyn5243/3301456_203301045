part of 'login_view.dart';

class LoginForgetButton extends StatelessWidget {
  const LoginForgetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          Get.toNamed(Routes.FORGET_PASSWORD);
        },
        child: Text(
          TextConstants.forgetYourPassword,
          style:
              TextStyle(color: ColorConstants.kFirstTextColor, fontSize: 18.sp),
        ),
      ),
    );
  }
}
