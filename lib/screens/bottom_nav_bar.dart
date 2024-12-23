import 'package:flutter/material.dart';
import 'package:ochildasturxon/screens/card_page.dart';
import 'package:ochildasturxon/screens/foods_page.dart';
import 'package:ochildasturxon/screens/home_page.dart';
import 'package:ochildasturxon/screens/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectPage = 0;
  List<Widget> pages = [
    const HomePage(),
    FoodsPage(),
     CardPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectPage,
        selectedIconTheme: const IconThemeData(
          color: Color(0xff233E82),
        ),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        onTap: (value) {
          setState(() {
            selectPage = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[selectPage],
    );
  }
}
