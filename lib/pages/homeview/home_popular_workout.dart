part of 'home_view.dart';

class HomePopularWorkout extends StatelessWidget {
  const HomePopularWorkout({Key? key, required this.workouts})
      : super(key: key);
  final List<List<Object>> workouts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Popular Workout",
          style: TextStyle(
              color: Colors.white,
              fontSize: 27.sp,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 200.h,
          width: ScreenUtil().screenWidth,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: workouts.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, val) => PrimaryWorkoutWidget(
                title: workouts[val][0] as String,
                image: workouts[val][1] as ImageProvider,
                route: Routes.WORKOUT),
          ),
        )
      ],
    );
  }
}
