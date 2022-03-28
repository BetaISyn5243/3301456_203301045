import 'package:betafitness/core.dart';

part 'login_controllers.dart';
part 'login_forget_button.dart';
part 'login_form_login.dart';

@immutable
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BodyHeader(
                title: TextConstants.signIn,
                subtitle: TextConstants.loginAbout,
                backgroundImagePath: ImageConstants.loginBGPath),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LoginFormLogin(),
                  SizedBox(height: 15.h),
                  const LoginForgetButton(),
                  SizedBox(height: 15.h),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButtonWidget(
                            title: TextConstants.logIn,
                            press: () => Get.offAllNamed(Routes.HOME),
                            color2: ColorConstants.kFirstColor),
                        TextButtonWidget(
                            title: TextConstants.signUp,
                            press: () => Get.toNamed(Routes.REGISTER),
                            color2: ColorConstants.kThirdColor),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
