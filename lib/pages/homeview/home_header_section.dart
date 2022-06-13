part of 'home_view.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.h,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FutureBuilder(
                  future: Users().getUser(),
                  builder: (builder, AsyncSnapshot<UserModel> snap) {
                    if (snap.hasData){
                      return RichText(
                        text: TextSpan(
                          text: TextConstants.hey,
                          style: TextStyle(
                              fontSize: 23.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorConstants.kFirstColor,
                              letterSpacing: 0.5.sp),
                          children: [
                            TextSpan(
                              text: " " + snap.data!.name,
                              style: const TextStyle(
                                  color: ColorConstants.kFirstTextColor),
                            )
                          ],
                        ),
                      );
                    }
                    else{
                      return RichText(
                        text: TextSpan(
                          text: TextConstants.hey,
                          style: TextStyle(
                              fontSize: 23.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorConstants.kFirstColor,
                              letterSpacing: 0.5.sp),
                          children: [
                            TextSpan(
                              text: " " + "def",
                              style: const TextStyle(
                                  color: ColorConstants.kFirstTextColor),
                            )
                          ],
                        ),
                      );

                    }
                  }),
              Icon(
                Icons.account_circle,
                size: 45.sp,
              )
            ],
          ),
          InkWell(
            onLongPress: ()=>{showDialog(
            context: Get.context!,
            builder: (BuildContext context) {
            return alertLongPress();
            },
            )},
            onDoubleTap: ()=>{showDialog(
            context: Get.context!,
            builder: (BuildContext context) {
            return alertDoubleTap();
            },
            )},
            child: Icon(
              Icons.arrow_circle_right_outlined,
              color: ColorConstants.kFirstColor,
              size: 80.sp,
            ),
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
