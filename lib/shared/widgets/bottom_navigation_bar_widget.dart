import 'package:betafitness/core.dart';

enum _types { WORKOUT, ICON, PROFILE }

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  _types activeTab = _types.WORKOUT;

  void _onChanged(_types value) {
    setState(() {
      activeTab = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: ColorConstants.kSecondColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton(
              onPressed: () {
                _onChanged(_types.WORKOUT);
                Get.toNamed(Routes.HOME);
              },
              child: Text(
                "Workout",
                style: TextStyle(
                    color: activeTab == _types.WORKOUT
                        ? ColorConstants.kFirstColor
                        : ColorConstants.kFourthColor),
              )),
          IconButton(
            tooltip: 'Search',
            icon: Icon(
              Icons.search,
              color: activeTab == _types.ICON
                  ? ColorConstants.kFirstColor
                  : ColorConstants.kFourthColor,
            ),
            onPressed: () {
              _onChanged(_types.ICON);
            },
          ),
          TextButton(
              onPressed: () {
                _onChanged(_types.PROFILE);
                Get.toNamed(Routes.PROFILE);
              },
              child: Text(
                "Profile",
                style: TextStyle(
                    color: activeTab == _types.PROFILE
                        ? ColorConstants.kFirstColor
                        : ColorConstants.kFourthColor),
              )),
        ],
      ),
    );
  }
}
