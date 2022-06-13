import 'package:betafitness/core.dart';

class WorkoutView extends StatelessWidget {
  const WorkoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.kThirdColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: ScreenUtil().screenHeight * 0.55,
                    child: const BackgroundImageWidget(
                        imagePath: "assets/images/black/11.jpg"),
                  ),
                  Container(
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25.h,
                      left: 10.w,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.transparent,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 120.w,
                              padding: EdgeInsets.symmetric(
                                  vertical: 3.h, horizontal: 8.w),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.r),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.access_time_rounded,
                                    size: 30.h,
                                  ),
                                  Text(
                                    "2 Hours",
                                    style: TextStyle(
                                        color: ColorConstants.kFirstTextColor,
                                        fontSize: 20.sp),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 50.w,
                              height: 50.h,
                              alignment: Alignment.center,
                              child: IconButton(
                                  iconSize: 40.h,
                                  enableFeedback: false,
                                  onPressed: () => Get.back(),
                                  icon: const Icon(
                                    Icons.cancel,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: Container(
                  child:  Column(
                    children: [
                      Text(
                        "Combine Exercises",
                        style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.kFirstTextColor),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Exercise are fun!",
                          style: TextStyle(
                              fontSize: 12.sp,

                              fontWeight: FontWeight.normal,
                              color: ColorConstants.kFirstTextColor),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
