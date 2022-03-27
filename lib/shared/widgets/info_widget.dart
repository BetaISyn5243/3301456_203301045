import 'package:betafitness/core.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({Key? key, required this.title, required this.description})
      : super(key: key);
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextConstants.welcome,
            style: TextStyle(
              fontSize: 40.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 17.h),
          const Text(
            TextConstants.splashDescription,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
