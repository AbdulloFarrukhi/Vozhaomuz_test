import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vozhaomuz/app/bottom_navigation.dart';
import 'package:vozhaomuz/core/constants/app_colors.dart';
import 'package:vozhaomuz/core/constants/app_text_styles.dart';
import 'package:vozhaomuz/shared/widgets/header_widget.dart';
import 'package:vozhaomuz/shared/widgets/my_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/vozhaomuz_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Gap(15),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.arrow_back_ios, color: AppColors.whiteText),
                ),
              ),
              Gap(115),
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.lightBlue[50],
                child: Image.asset('assets/images/vozhaomuz_logo.png'),
              ),
              HeaderWidget(
                title: 'register'.tr(),
                alignment: Alignment.center,
                textStyle: AppTextStyles.bigTextButton.copyWith(
                  fontSize: 35,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Gap(40),
              MyButton(
                buttonColor: AppColors.goldButtonColor,
                backButtonColor: AppColors.goldBackButtonColor,
                onPressed:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigation(),
                      ),
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google_logo.png',
                      color: Colors.white,
                    ),
                    Gap(10),
                    Text('sign_in_with_google'.tr()),
                  ],
                ),
              ),
              Gap(25),
              MyButton(
                depth: 7,
                onPressed:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigation(),
                      ),
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/apple_logo.png'),
                    Gap(10),
                    Text('sign_in_with_apple'.tr()),
                  ],
                ),
              ),
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
