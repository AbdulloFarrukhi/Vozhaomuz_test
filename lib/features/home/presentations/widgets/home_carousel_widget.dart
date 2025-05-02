import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarouselWidget extends StatefulWidget {
  const HomeCarouselWidget({super.key});

  @override
  State<HomeCarouselWidget> createState() => _HomeCarouselWidgetState();
}

class _HomeCarouselWidgetState extends State<HomeCarouselWidget> {
  int isThis = 0;

  final List<String> carouselImages = [
    'assets/images/banner.png',
    'assets/images/banner (1).png',
    'assets/images/banner (2).png',
    'assets/images/banner (3).png',
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CarouselSlider(
              items: List.generate(4, (index) {
                return Image.asset(carouselImages[index]);
              }),
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  isThis = index;
                  setState(() {});
                },
                autoPlay: true,
                aspectRatio: 16 / 7.5,
                viewportFraction: 1.0,
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor:
                      isThis == index
                          ? Colors.blue
                          : const Color.fromARGB(255, 178, 218, 245),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
