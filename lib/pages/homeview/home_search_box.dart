part of 'home_view.dart';

class HomeSearchBox extends StatelessWidget {
  const HomeSearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40.h,
      decoration: BoxDecoration(
          color: ColorConstants.kSecondColor,
          borderRadius: BorderRadius.all(Radius.circular(30.r))),
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            border: InputBorder.none,
            alignLabelWithHint: true,
            suffixIcon: const Icon(Icons.search),
            suffixIconColor: Colors.white,
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 13.sp, height: 1.5.h),
            hintText: TextConstants.searchWorkout,
          ),
        ),
      ),
    );
  }
}
