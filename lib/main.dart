import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import 'core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));

  /// Make sure you add this line here, so the plugin can access the native side
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => GetMaterialApp(
        title: "Beta Fitness",
        themeMode: ThemeMode.dark,
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.blue,
          hintColor: Colors.white,
          textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.white)),
        ),
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.cupertino,
        opaqueRoute: Get.isOpaqueRouteDefault,
        transitionDuration: const Duration(milliseconds: 230),
        popGesture: Get.isPopGestureEnable,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    );
  }
}
