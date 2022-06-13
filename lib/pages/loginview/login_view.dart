import 'package:betafitness/core.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:betafitness/utils/Globals.dart' as globals;

part 'login_controllers.dart';
part 'login_forget_button.dart';
part 'login_form_login.dart';
part 'login_utils.dart';

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
                            press: () => !loginCredinantalControl()
                                ? showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return alert();
                                    },
                                  )
                                : loginControl(),
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

  AlertDialog alert() {
    return AlertDialog(
      title: const Text("Invalid Credinantal",
          style: TextStyle(color: ColorConstants.kFirstTextColor)),
      alignment: Alignment.center,
      actions: <Widget>[
        ElevatedButton(
          onPressed: () => Get.back(),
          child: const Text("Ok"),
        ),
      ],
    );
  }

  AlertDialog alertKayitOl() {
    return AlertDialog(
      title: const Text("Register please",
          style: TextStyle(color: ColorConstants.kFirstTextColor)),
      alignment: Alignment.center,
      actions: <Widget>[
        ElevatedButton(
          onPressed: () => Get.back(),
          child: const Text("Ok"),
        ),
      ],
    );
  }
}
