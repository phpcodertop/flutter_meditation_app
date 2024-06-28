import 'package:flutter/material.dart';
import '../constants.dart';

class AppSessionCard extends StatelessWidget {
  final String sessionNumber;
  final bool isDone;
  final Function()? onPress;

  const AppSessionCard({
    super.key,
    required this.sessionNumber,
    this.isDone = false,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constrains.maxWidth / 2 - 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPress,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: Icon(Icons.play_arrow, color: isDone ? Colors.white : kBlueColor,),
                    ),
                    const SizedBox(width: 5,),
                    Text('Session $sessionNumber'),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
