import 'package:betafitness/core.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

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
                        imagePath: "assets/images/black/3.jpg"),
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
                  Column(
                    children: [
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
                                  width: 270.w,
                                  height: 50.h,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3.h, horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    color: ColorConstants.kSecondColor,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.r),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Settings",
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
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.h, left: 20.w,right: 20.w,top: 200.h),
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                "Settings",
                                style: TextStyle(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.bold,
                                    color: ColorConstants.kFirstTextColor),
                              ),
                              Padding(padding: EdgeInsets.symmetric(vertical: 10.h)),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia, felis eu volutpat dapibus, velit ante congue risus, at pulvinar mi nulla eget lectus. Pellentesque sollicitudin velit vitae accumsan malesuada. Nullam dignissim non ante ut aliquam. Pellentesque placerat ante dui, ac euismod massa pellentesque et. Nam at finibus enim. Quisque dignissim volutpat rhoncus. Duis a posuere lacus, eget bibendum neque. Sed commodo varius consequat. Phasellus eu hendrerit leo, quis tempor nibh. Aenean lacinia, augue ac aliquet placerat, sem nunc blandit nisi, at congue urna eros sed lacus. Donec cursus leo et turpis finibus, ut venenatis urna volutpat. Praesent suscipit dolor id elit feugiat, vitae sodales ligula pellentesque.",
                                  style: TextStyle(
                                      fontSize: 20.sp,
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
                ],
              ),
            ],
          ),
        ));
  }
}
