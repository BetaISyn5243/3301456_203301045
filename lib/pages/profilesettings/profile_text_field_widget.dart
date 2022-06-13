part of 'profile_settings_view.dart';

class ProfileTextFieldWidget extends StatelessWidget {
  const ProfileTextFieldWidget(
      {Key? key,
      required this.title,
      required this.hint,
      required this.textEditingController})
      : super(key: key);
  final String title;
  final String hint;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: Text(
              title,
              style: TextStyle(
                color: ColorConstants.kFirstColor,
                fontSize: 14.sp,
              ),
            ),
          ),
          TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(fontSize: 14.sp),
              alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.start,
              isCollapsed: false,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintMaxLines: 1,
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 20.h)),
        ],
      ),
    );
  }
}
