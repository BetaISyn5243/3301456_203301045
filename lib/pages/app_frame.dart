import 'package:betafitness/core.dart';
import 'package:betafitness/pages/homeview/home_view.dart';
import 'package:betafitness/pages/profileview/profile_view.dart';
import 'package:betafitness/pages/workoutsearchview/workout_search_view.dart';

class AppFrame extends StatefulWidget {
  const AppFrame({Key? key}) : super(key: key);

  @override
  State<AppFrame> createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const WorkoutSearchView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: ColorConstants.kFirstColor,
        onTap: _onItemTapped,
        backgroundColor: ColorConstants.kSecondColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Text(
              "Workout",
              style: TextStyle(color: ColorConstants.kFourthColor),
            ),
            activeIcon: Text(
              "Workout",
              style: TextStyle(color: ColorConstants.kFirstColor),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.search,
              color: ColorConstants.kFourthColor,
            ),
            activeIcon: Icon(
              Icons.search,
              color: ColorConstants.kFirstColor,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Text(
              "Profile",
              style: TextStyle(color: ColorConstants.kFourthColor),
            ),
            activeIcon: Text(
              "Profile",
              style: TextStyle(color: ColorConstants.kFirstColor),
            ),
          ),
        ],
      ),
    );
  }
}
