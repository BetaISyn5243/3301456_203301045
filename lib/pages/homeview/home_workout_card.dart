part of 'home_view.dart';

class HomeWorkoutWidget extends StatelessWidget {
  const HomeWorkoutWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.route,
  }) : super(key: key);
  final String title;
  final ImageProvider image;
  final String route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(route),
      child: Padding(
        padding: EdgeInsets.only(right: 14.w),
        child: SizedBox(
          height: 180.h,
          width: 110.w,
          child: Column(
            children: [
              Container(
                height: 140.h,
                width: 110.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 110.w,
                height: 40.h,
                alignment: Alignment.center,
                child: Text(title),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
