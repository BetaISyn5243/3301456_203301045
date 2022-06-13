part of 'login_view.dart';

bool loginCredinantalControl() {
  return LoginControllers.emailController.text.toString().isEmail &
      LoginControllers.passwordController.text.toString().isNotEmpty;
}


 Future<bool> loginControl() async {
  try {
    globals.user = await Users().login(LoginControllers.emailController.text.toString(), LoginControllers.passwordController.text.toString());
    globals.fetchInfo();
    if (globals.user != null){
      Get.offAllNamed(Routes.APPFRAME);
   }

    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found' || e.code =='wrong-password') {
      showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return alertKayitOl();
        },
      );
    }
    return false;
  }
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