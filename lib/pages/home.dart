import 'package:flutter/material.dart';
import 'package:flutter_excercise_app/pages/details_page.dart';
import 'package:flutter_excercise_app/widgets/app_bottom_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/app_category_card.dart';
import '../widgets/app_search_bar.dart';
import '../constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(),
      body: Stack(
        children: [
          // top header background
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
                color: kHomeTopBackgroundColor,
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
                )),
          ),

          // content goes here
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  // icon
                  GestureDetector(
                    onTap: () {},
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                            color: Color(0xFFF2BEA1), shape: BoxShape.circle),
                        child: SvgPicture.asset('assets/icons/menu.svg'),
                      ),
                    ),
                  ),
                  // grating
                  Text(
                    'Good Morning \n Ahmed',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                  ),

                  // Search Bar
                  const AppSearchBar(),

                  // category boxes
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      children: [
                        AppCategoryCard(
                          onPress: () {},
                          svgSrc: 'assets/icons/Hamburger.svg',
                          title: 'Diet Recommendation',
                        ),
                        AppCategoryCard(
                          onPress: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (_) => const DetailsPage(),
                              ),
                            );
                          },
                          svgSrc: 'assets/icons/Excrecises.svg',
                          title: 'Kegel Exercises',
                        ),
                        AppCategoryCard(
                          onPress: () {},
                          svgSrc: 'assets/icons/Meditation.svg',
                          title: 'Meditation',
                        ),
                        AppCategoryCard(
                          onPress: () {},
                          svgSrc: 'assets/icons/yoga.svg',
                          title: 'Yoga',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
