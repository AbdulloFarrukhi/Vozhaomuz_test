import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vozhaomuz/features/competition/presentaion/screens/competition_screen.dart';
import 'package:vozhaomuz/features/home/presentations/screens/home_screen.dart';
import 'package:vozhaomuz/features/mywords/presentation/screens/mywords_screen.dart';
import 'package:vozhaomuz/features/rating/presentation/screens/ratings_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List pages = [
    HomeScreen(),
    MywordsScreen(),
    CompetitionScreen(),
    RatingScreen(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,

        onTap:
            (value) => setState(() {
              index = value;
            }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'home'.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_sharp),
            label: 'my_words'.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.military_tech_outlined),
            label: 'copmetition'.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_sharp),
            label: 'rating'.tr(),
          ),
        ],
      ),
    );
  }
}
