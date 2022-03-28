part of 'register_view.dart';

class RegisterController {
  static final TextEditingController nameController = TextEditingController();
  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController phoneController = TextEditingController();
  static final TextEditingController passwordController1 =
      TextEditingController();
  static final TextEditingController passwordController2 =
      TextEditingController();

  /*static Map<RegisterControllerTypes, TextEditingController> controllers = {
    RegisterControllerTypes.name: nameController,
    RegisterControllerTypes.email: emailController,
    RegisterControllerTypes.phone: phoneController,
    RegisterControllerTypes.password1: passwordController1,
    RegisterControllerTypes.password2: passwordController2,
  };*/
}

/*
enum RegisterControllerTypes { name, email, phone, password1, password2 }
*/
