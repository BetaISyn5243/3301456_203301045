import 'package:betafitness/core.dart';

Widget WelcomeInfo() {
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
          TextConstants.splashAbout,
          style: TextStyle(color: Colors.white),
        )
      ],
    ),
  );
}
