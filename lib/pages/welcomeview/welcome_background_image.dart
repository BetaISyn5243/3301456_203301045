import 'package:betafitness/coregs.dart';

Widget WelcomeBackgroundImage() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/black/9.jpg"),
        fit: BoxFit.cover,
      ),
    ),
  );
}
