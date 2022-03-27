import 'package:betafitness/core.dart';

class BodyHeader extends StatelessWidget {
  const BodyHeader(
      {Key? key,
      required this.backgroundImagePath,
      required this.title,
      required this.subtitle})
      : super(key: key);

  final String backgroundImagePath, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundImage(),
        titleSubtitle(),
      ],
    );
  }

  Container titleSubtitle() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              ColorConstants.kThirdColor,
              Colors.transparent,
            ]),
      ),
      height: Get.height * 0.55,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const HeaderReachText(),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container backgroundImage() {
    return Container(
      height: Get.height * 0.55,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
