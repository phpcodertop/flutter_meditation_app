import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_excercise_app/widgets/app_bottom_navigation_bar.dart';
import 'package:flutter_excercise_app/widgets/app_search_bar.dart';
import 'package:flutter_excercise_app/widgets/app_session_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(),
      body: Stack(
        children: [
          // top background
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/images/meditation_bg.png'),
              ),
            ),
          ),

          // content goes here
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    // text
                    const Text(
                      'Meditation',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '3-10 MIN Course',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: size.width * 0.5,
                      child: const Text(
                        'Live happier and healthier by learning the fundamentals of meditation and mindfulness',
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      child: const AppSearchBar(),
                    ),

                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        AppSessionCard(
                          sessionNumber: '01',
                          onPress: () {},
                          isDone: true,
                        ),
                        AppSessionCard(
                          sessionNumber: '02',
                          onPress: () {},
                        ),
                        AppSessionCard(
                          sessionNumber: '03',
                          onPress: () {},
                        ),
                        AppSessionCard(
                          sessionNumber: '04',
                          onPress: () {},
                        ),
                        AppSessionCard(
                          sessionNumber: '05',
                          onPress: () {},
                        ),
                        AppSessionCard(
                          sessionNumber: '06',
                          onPress: () {},
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Meditaion',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
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
                      child: Row(
                        children: [
                          // image
                          SvgPicture.asset(
                              'assets/icons/Meditation_women_small.svg'),
                          const SizedBox(
                            width: 20,
                          ),
                          // column
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Basic 2"),
                                Text("Start your deepen you practice"),
                              ],
                            ),
                          ),

                          // icon
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
