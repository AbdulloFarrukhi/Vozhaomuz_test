import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vozhaomuz/core/constants/app_colors.dart';
import 'package:vozhaomuz/core/constants/app_text_styles.dart';
import 'package:vozhaomuz/features/auth/presentation/screens/about_page.dart';
import 'package:vozhaomuz/shared/widgets/header_widget.dart';
import 'package:vozhaomuz/shared/widgets/my_button.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Gap(30),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back_ios, color: AppColors.whiteText),
              ),
            ),
            Gap(90),
            CircleAvatar(
              radius: 90,
              backgroundColor: Color.fromRGBO(132, 202, 255, 1),
              child: Image.asset('assets/images/vozhaomuz_logo.png'),
            ),
            HeaderWidget(
              title: 'VozhaOmuz',
              alignment: Alignment.center,
              textStyle: AppTextStyles.bigTextButton.copyWith(
                fontSize: 35,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: HeaderWidget(
                title: 'let\'s_learn_english_together'.tr(),
                alignment: Alignment.center,
                textStyle: AppTextStyles.bigTextButton.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            Spacer(),
            MyButton(
              buttonColor: AppColors.goldButtonColor,
              backButtonColor: AppColors.goldBackButtonColor,
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutPage()),
                  ),
              child: Center(
                child: Text(
                  'start'.tr(),
                  style: AppTextStyles.bigTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Gap(15),
            MyButton(
              depth: 7,
              onPressed: null,
              child: Center(
                child: Text(
                  'i_also_have_an_account'.tr(),
                  style: AppTextStyles.bigTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
