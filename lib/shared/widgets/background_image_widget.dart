import 'package:betafitness/coregs.dart';

class BackgroundImageWidget extends StatelessWidget {
  const BackgroundImageWidget({Key? key, required this.imagePath})
      : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
