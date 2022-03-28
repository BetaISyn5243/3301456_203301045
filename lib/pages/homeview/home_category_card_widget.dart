part of 'home_view.dart';

class HomeCategoryCardWidget extends StatelessWidget {
  final String title;
  final bool enable;
  final Function() onTap;

  const HomeCategoryCardWidget({
    Key? key,
    required this.onTap,
    required this.enable,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            border: enable
                ? Border.all(color: ColorConstants.kFirstColor, width: 1.w)
                : null),
        child: Text(
          title,
          style: TextStyle(
              color: ColorConstants.kFirstColor,
              fontWeight: FontWeight.w400,
              fontSize: 15.sp),
        ),
      ),
    );
  }
}
