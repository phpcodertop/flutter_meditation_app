import 'package:flutter/material.dart';
import 'package:flutter_excercise_app/pages/home.dart';

import '../pages/details_page.dart';
import 'bottom_nav_item.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            title: 'Today',
            svgPath: "assets/icons/calendar.svg",
            onPress: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => const Home(),
                ),
              );
            },
          ),

          BottomNavItem(
            title: 'All Exercises',
            svgPath: "assets/icons/gym.svg",
            isActive: true,
            onPress: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => const DetailsPage(),
                ),
              );
            },
          ),

          const BottomNavItem(
            title: 'Settings',
            svgPath: "assets/icons/Settings.svg",
          ),
        ],
      ),
    );
  }
}
