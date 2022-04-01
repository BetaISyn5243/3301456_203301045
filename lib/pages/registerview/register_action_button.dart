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
                      !registerCredinantalControl()
                          ? showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alert();
                              },
                            )
                          : !registerPasswordController()
                              ? showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return alertPassNotMatch();
                                  },
                                )
                              : {
                                  Users.users.add(
                                    User(
                                        name: RegisterController
                                            .nameController.text
                                            .toString(),
                                        phone: RegisterController
                                            .phoneController.text
                                            .toString(),
                                        password: RegisterController
                                            .passwordController1.text
                                            .toString(),
                                        email: RegisterController
                                            .emailController.text
                                            .toString()),
                                  ),
                                  Get.offAllNamed(Routes.APPFRAME),
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

  AlertDialog alert() {
    return AlertDialog(
      title: const Text(
        "Invalid Credinantal",
        style: TextStyle(color: ColorConstants.kFirstTextColor),
      ),
      alignment: Alignment.center,
      actions: <Widget>[
        ElevatedButton(
          onPressed: () => Get.back(),
          child: const Text(
            "Ok",
            style: TextStyle(color: ColorConstants.kFirstTextColor),
          ),
        ),
      ],
    );
  }

  AlertDialog alertPassNotMatch() {
    return AlertDialog(
      title: const Text("Passwords not equal",
          style: TextStyle(color: ColorConstants.kFirstTextColor)),
      alignment: Alignment.center,
      actions: <Widget>[
        ElevatedButton(
          onPressed: () => Get.back(),
          child: const Text(
            "Ok",
            style: TextStyle(color: ColorConstants.kFirstTextColor),
          ),
        ),
      ],
    );
  }
}
