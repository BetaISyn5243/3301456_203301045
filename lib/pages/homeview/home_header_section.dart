part of 'home_view.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255.h,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: TextConstants.hey,
                  style: TextStyle(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.kFirstColor,
                      letterSpacing: 0.5.sp),
                  children: <TextSpan>[
                    TextSpan(
                      text: " " + RegisterController.nameController.text,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.account_circle,
                size: 45.sp,
              )
            ],
          ),
          Icon(
            Icons.arrow_circle_right_outlined,
            color: ColorConstants.kFirstColor,
            size: 80.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: TextConstants.find,
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.kFirstColor,
                      letterSpacing: 0.5.sp),
                  children: const <TextSpan>[
                    TextSpan(
                      text: " " + TextConstants.yourWorkout,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.arrow_downward_rounded,
                size: 25.sp,
              )
            ],
          ),
        ],
      ),
    );
  }
}
