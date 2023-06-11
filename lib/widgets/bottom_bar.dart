import 'package:farooq_streetfood/userLayouts/layout_favourite.dart';
import 'package:farooq_streetfood/userLayouts/layout_home.dart';
import 'package:farooq_streetfood/userLayouts/layout_profile.dart';
import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  static const List<Widget> layouts = [
    HomeLayout(),
    FavouriteLayout(),
    ProfileLayout(),
  ];

  static int myIndex = 0;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BottomBar.layouts[BottomBar.myIndex],
        bottomNavigationBar: WaterDropNavBar(
          backgroundColor: Color(0xff000000),
          inactiveIconColor: Color(0xffffffff),
          waterDropColor: Color(0xffF7BB0E),
          barItems: [
            BarItem(
              filledIcon: Icons.home,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
              filledIcon: Icons.favorite,
              outlinedIcon: Icons.favorite_border,
            ),
            BarItem(
              filledIcon: Icons.person,
              outlinedIcon: Icons.person_outline,
            ),
          ],
          selectedIndex: BottomBar.myIndex,
          onItemSelected: (int index) {
            setState(() {
              BottomBar.myIndex = index;
            });
          },
        ),
      ),
    );
  }
}
