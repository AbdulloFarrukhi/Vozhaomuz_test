import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vozhaomuz/core/constants/app_colors.dart';
import 'package:vozhaomuz/core/constants/app_text_styles.dart';
import 'package:vozhaomuz/features/auth/presentation/screens/sign_up_page.dart';
import 'package:vozhaomuz/features/auth/presentation/widgets/current_indicator.dart';
import 'package:vozhaomuz/shared/widgets/my_button.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<String> _images = [
    'assets/images/choose_and_learn.png',
    'assets/images/fast_learning_words.png',
    'assets/images/little_steps_to_big_road.png',
    'assets/images/your_app_your_rools.png',
  ];

  final List<Map<String, String>> _descriptions = [
    {'title': 'motivation_1', 'description': 'motivation_description_1'},
    {'title': 'motivation_2', 'description': 'motivation_description_2'},
    {'title': 'motivation_3', 'description': 'motivation_description_3'},
    {'title': 'motivation_4', 'description': 'motivation_description_4'},
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenColors,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _images.length,
                    onPageChanged: _onPageChanged,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        child: Image.asset(_images[index], scale: 0.7),
                      );
                    },
                  ),
                ),
                Gap(25),
                CurrentIndicator(
                  itempadding: EdgeInsets.symmetric(horizontal: 4, vertical: 5),
                  size: 4,
                  alignment: Alignment.center,
                  indicatorLength: _images.length,
                  currentIndex: _currentIndex,
                ),
              ],
            ),
          ),
          Gap(50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
            child: Column(
              children: [
                Text(
                  _descriptions[_currentIndex]['title']!.tr(),
                  style: AppTextStyles.bigTextStyle.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.start,
                ),
                Gap(20),
                Text(
                  _descriptions[_currentIndex]['description']!.tr(),
                  style: AppTextStyles.hintextStyle.copyWith(fontSize: 15),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: MyButton(
              backButtonColor: AppColors.backButtonColor,
              buttonColor: AppColors.buttonColor,
              child: Center(
                child: Text('next'.tr(), style: AppTextStyles.mediumTextButton),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
            ),
          ),
          Gap(30),
        ],
      ),
    );
  }
}
