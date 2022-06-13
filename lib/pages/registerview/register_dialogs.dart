part of 'register_view.dart';

AlertDialog alertInvalidCredential() {
  return AlertDialog(
    title: const Text(
      "Invalid Credinantal",
      style: TextStyle(color: ColorConstants.kFirstTextColor),
    ),
    alignment: Alignment.center,
    actions: [
      ElevatedButton(
        onPressed: () => Get.back(),
        child: const Text(
          "Ok",
          style: TextStyle(color: ColorConstants.kFirstTextColor),
        ),
      ),
    ],
  );
}AlertDialog alertCodeBump() {
  return AlertDialog(
    title: const Text(
      "Sistem arıza",
      style: TextStyle(color: ColorConstants.kFirstTextColor),
    ),
    alignment: Alignment.center,
    actions: [
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

AlertDialog alertEmptyCredential() {
  return AlertDialog(
    title: Text(''),
    alignment: Alignment.center,
    actions: [
      ElevatedButton(
        onPressed: () => Get.back(),
        child: const Text('Ok'),
      ),
    ],
  );
}
AlertDialog alertSuccess() {
  return AlertDialog(
    title: Text('Hesabınız oluşturuldu giriş yapnız'),
    alignment: Alignment.center,
    actions: [
      ElevatedButton(
        onPressed: () => Get.back(),
        child: const Text('Ok'),
      ),
    ],
  );
}

AlertDialog alertPasswordsNotEqual() {
  return AlertDialog(
    title: const Text("Passwords not equal",
        style: TextStyle(color: ColorConstants.kFirstTextColor)),
    alignment: Alignment.center,
    actions: [
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
