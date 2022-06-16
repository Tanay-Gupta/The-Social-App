import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swag_app/screens/home/home.dart';
import 'package:swag_app/screens/homescreen/leaderboard.dart';
import 'package:swag_app/screens/homescreen/search.dart';
import 'package:swag_app/screens/profile/profile.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);
  static String routeName = "/nav";

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentIndex = 0;

  final screens = [
    HomeScreen(),
    SearchScreen(),
    Center(child: Text("Post")),
    Leaderboard(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("assets/icons/homeIcon.svg"),
              icon: SvgPicture.asset("assets/icons/homeIconNA.svg"),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("assets/icons/searchIconA.svg"),
              icon: SvgPicture.asset("assets/icons/searchIcon.svg"),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("assets/icons/postIconA.svg"),
              icon: SvgPicture.asset("assets/icons/postIcon.svg"),
              label: 'Post',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("assets/icons/leaderboardIconA.svg"),
              icon: SvgPicture.asset("assets/icons/leaderboardIcon.svg"),
              label: 'Leaderboard',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("assets/icons/profileIconA.svg"),
              icon: SvgPicture.asset("assets/icons/profileIcon.svg"),
              label: 'Profile',
            ),
          ],
        ));
  }
}
