part of 'register_view.dart';

class RegisterActionButton extends StatelessWidget {
  const RegisterActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50.h),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButtonWidget(
                title: TextConstants.register,
                press: () => {
                      !registerCredentialControl()
                          ? showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alertInvalidCredential();
                              },
                            )
                          : !registerPasswordEqualController()
                              ? showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return alertPasswordsNotEqual();
                                  },
                                )
                              : {
                            registerControl(),

                                }
                    },
                color2: ColorConstants.kFirstColor),
            TextButtonWidget(
                title: TextConstants.cancel,
                press: () => Get.back(),
                color2: ColorConstants.kThirdColor)
          ],
        ),
      ),
    );
  }
}
