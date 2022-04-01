import 'package:betafitness/core.dart';

part 'home_category_card_widget.dart';
part 'home_category_widget.dart';
part 'home_header_section.dart';
part 'home_popular_workout.dart';
part 'home_search_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> category = [
      "Popular",
      "Hard workout",
      "Full body",
      "Crossfit"
    ];
    const List<List<Object>> workouts = [
      ["Dribble Exercises", AssetImage("assets/images/black/10.jpg")],
      ["Combine Exercises", AssetImage("assets/images/black/11.jpg")],
      ["Push-Up Exercises", AssetImage("assets/images/black/12.jpg")],
      ["Push-Up Exercises", AssetImage("assets/images/black/12.jpg")],
      ["Push-Up Exercises", AssetImage("assets/images/black/12.jpg")],
      ["Push-Up Exercises", AssetImage("assets/images/black/12.jpg")],
      ["Push-Up Exercises", AssetImage("assets/images/black/12.jpg")],
    ];
    return Scaffold(
      backgroundColor: ColorConstants.kThirdColor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            SizedBox(
                height: 300.h,
                width: ScreenUtil().screenWidth,
                child: const BackgroundImageWidget(
                    imagePath: ImageConstants.homeBGPath)),
            Container(
              height: ScreenUtil().screenHeight,
              width: ScreenUtil().screenWidth,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [
                      0.6,
                      1
                    ],
                    colors: [
                      ColorConstants.kThirdColor,
                      Colors.transparent,
                    ]),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const HomeHeaderSection(),
                      SizedBox(height: 10.h),
                      const HomeSearchBox(),
                      const HomeCategoryWidget(category: category),
                      const HomePopularWorkout(workouts: workouts),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
