import 'package:betafitness/core.dart';

part 'forget_body_form.dart';
part 'forget_controller.dart';
part 'forget_footer_button.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            BodyHeader(
                backgroundImagePath: ImageConstants.forgetBGPath,
                title: TextConstants.forgetPassword,
                subtitle: TextConstants.forgetDescription),
            ForgetBodyForm(),
            ForgetFooterButton(),
          ],
        ),
      ),
    );
  }
}
