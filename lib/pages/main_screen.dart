import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/pages/home_screen.dart';
import 'package:food_app/values/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static const routeName = 'home_page';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  double bottomIconSize = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.green,
          )
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: ColorPalette.primaryColor,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: Colors.red,
        ),
        child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            type: BottomNavigationBarType.shifting,
            backgroundColor: ColorPalette.primaryColor,
            selectedItemColor: ColorPalette.highlightColor,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  size: bottomIconSize + 6,
                ),
                icon: Icon(
                  Icons.home_outlined,
                  size: bottomIconSize + 6,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.heart,
                    size: bottomIconSize,
                  ),
                  activeIcon: Icon(
                    FontAwesomeIcons.solidHeart,
                    size: bottomIconSize,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.user,
                    size: bottomIconSize,
                  ),
                  activeIcon: Icon(
                    FontAwesomeIcons.solidUser,
                    size: bottomIconSize,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.clockRotateLeft,
                    size: bottomIconSize,
                  ),
                  activeIcon: Icon(
                    FontAwesomeIcons.clockRotateLeft,
                    size: bottomIconSize,
                  ),
                  label: '')
            ]),
      ),
    );
  }
}
