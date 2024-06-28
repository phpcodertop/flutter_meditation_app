import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          icon: SvgPicture.asset('assets/icons/search.svg'),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
