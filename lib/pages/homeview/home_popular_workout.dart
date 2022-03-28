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
              fontSize: 29.sp,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20.h,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              for (var i = 0; i < workouts.length; i++)
                HomeWorkoutWidget(
                    title: workouts[i][0] as String,
                    image: workouts[i][1] as ImageProvider,
                    route: Routes.REGISTER)
            ],
          ),
        )
      ],
    );
  }
}
