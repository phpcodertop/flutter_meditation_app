import 'package:flutter/material.dart';
import 'package:flutter_excercise_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavItem extends StatelessWidget {
  final String svgPath;
  final String title;
  final Function()? onPress;
  final bool isActive;

  const BottomNavItem({
    super.key,
    required this.svgPath,
    required this.title,
    this.onPress,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          SvgPicture.asset(svgPath, color: isActive ? kActiveIconColor : kTextColor,),
          Text(title, style: TextStyle(
            color: isActive ? kActiveIconColor : kTextColor
          ),),
        ],
      ),
    );
  }
}
