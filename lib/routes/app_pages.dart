// ignore_for_file: constant_identifier_names

import 'package:betafitness/core.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: Routes.WELCOME,
      page: () => const WelcomeView(),
    ),
    GetPage(
      name: Routes.ABOUT,
      page: () => const AboutView(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
    ),
    GetPage(
      name: Routes.FORGET_PASSWORD,
      page: () => const ForgetPasswordView(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterView(),
    ),
    GetPage(
      name: Routes.APPFRAME,
      page: () => const AppFrame(),
    ),
    GetPage(
      name: Routes.PROFILESETTINGS,
      page: () => ProfileSettingsView(),
    ),
    GetPage(
      name: Routes.WORKOUT,
      page: () => WorkoutView(),
    ),
  ];
}
