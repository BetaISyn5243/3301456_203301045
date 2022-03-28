import 'package:betafitness/core.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {Key? key,
      required this.title,
      required this.press,
      this.color1 = Colors.white,
      required this.color2})
      : super(key: key);
  final String title;
  final Function() press;
  final Color color1, color2;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: Container(
        height: 50,
        width: Get.width * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color2,
          border: Border.all(width: 1, color: ColorConstants.kFirstColor),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: color1, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
