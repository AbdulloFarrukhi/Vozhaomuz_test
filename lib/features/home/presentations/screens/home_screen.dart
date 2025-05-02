import 'package:flutter/material.dart';
import 'package:vozhaomuz/features/home/presentations/widgets/home_appbar_widget.dart';
import 'package:vozhaomuz/features/home/presentations/widgets/home_battons_widget.dart';
import 'package:vozhaomuz/features/home/presentations/widgets/home_carousel_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [HomeCarouselWidget(), HomeBattonsWidget()],
      ),
    );
  }
}
