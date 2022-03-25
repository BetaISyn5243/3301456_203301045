import 'package:betafitness/core.dart';
import 'package:flutter/material.dart';

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
      color: kSecondColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton(
              onPressed: () {
                _onChanged(_types.WORKOUT);
              },
              child: Text(
                "Workout",
                style: TextStyle(
                    color: activeTab == _types.WORKOUT
                        ? kFirstColor
                        : Color(0xFF707070)),
              )),
          IconButton(
            tooltip: 'Search',
            icon: Icon(Icons.search,color: activeTab == _types.ICON
                ? kFirstColor
                : Color(0xFF707070) ,),
            onPressed: () {
              _onChanged(_types.ICON);
            },
          ),
          TextButton(
              onPressed: () {
                _onChanged(_types.PROFILE);
              },
              child: Text(
                "Profile",
                style: TextStyle(
                    color: activeTab == _types.PROFILE
                        ? kFirstColor
                        : Color(0xFF707070)),
              )),
        ],
      ),
    );
  }
}
