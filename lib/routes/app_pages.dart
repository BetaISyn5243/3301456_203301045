// ignore_for_file: constant_identifier_names

import 'package:betafitness/core.dart';
import 'package:betafitness/pages/aboutview/about_view.dart';
import 'package:betafitness/pages/app_frame.dart';
import 'package:betafitness/pages/forgetpasswordview/forget_password_view.dart';
import 'package:betafitness/pages/invitefriend/invite_friend.dart';
import 'package:betafitness/pages/loginview/login_view.dart';
import 'package:betafitness/pages/profilesettings/profile_settings_view.dart';
import 'package:betafitness/pages/registerview/register_view.dart';
import 'package:betafitness/pages/settingview/setting_view.dart';
import 'package:betafitness/pages/splashview/splash_view.dart';
import 'package:betafitness/pages/user_agreement/agreements.dart';
import 'package:betafitness/pages/user_agreement/user_agreement.dart';
import 'package:betafitness/pages/welcomeview/welcome_view.dart';
import 'package:betafitness/pages/workoutview/workout_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

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
      page: () => const ProfileSettingsView(),
    ),
    GetPage(
      name: Routes.WORKOUT,
      page: () => const WorkoutView(),
    ),
    GetPage(
      name: Routes.INVITE,
      page: () => InviteFriend(),
    ),
    GetPage(
      name: Routes.USERAGREEMENT,
      page: () => UserAgreement(),
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => SettingView(),
    ),
    GetPage(
      name: Routes.AGREEMENT,
      page: () => Agreements(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
    ),
  ];
}
