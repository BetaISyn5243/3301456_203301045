part of 'home_view.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({Key? key, required this.category})
      : super(key: key);
  final List<String> category;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70.h,
        width: ScreenUtil().screenWidth,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 30.h,
              alignment: Alignment.center,
              width: ScreenUtil().screenWidth - 40.w,
              child: ValueBuilder<int?>(
                initialValue: 0,
                builder: (value, updateFn) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (var i = 0; i < category.length; i++)
                      HomeCategoryCardWidget(
                        title: category[i],
                        enable: value == i ? true : false,
                        onTap: () => updateFn(i),
                      ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
