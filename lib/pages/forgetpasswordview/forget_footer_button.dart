part of 'forget_password_view.dart';

class ForgetFooterButton extends StatelessWidget {
  const ForgetFooterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextButtonWidget(
              title: TextConstants.submit,
              press: () => Get.back(),
              color2: ColorConstants.kFirstColor),
          TextButtonWidget(
              title: TextConstants.cancel,
              press: () => Get.back(),
              color2: ColorConstants.kThirdColor)
        ],
      ),
    );
  }
}
