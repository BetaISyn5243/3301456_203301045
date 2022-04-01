import 'package:betafitness/core.dart';

class WorkoutSearchView extends StatelessWidget {
  const WorkoutSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: ColorConstants.kThirdColor,
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20.h),
                  height: 50.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                    color: ColorConstants.kFourthColor.withOpacity(0.8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.r),
                    ),
                  ),
                  child: Container(
                    width: 300.w,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: "Search",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
