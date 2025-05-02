import 'package:country_flags/country_flags.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vozhaomuz/core/constants/app_colors.dart';
import 'package:vozhaomuz/core/constants/app_text_styles.dart';
import 'package:vozhaomuz/features/auth/presentation/screens/start_page.dart';
import 'package:vozhaomuz/features/auth/presentation/widgets/language_button_child.dart';
import 'package:vozhaomuz/shared/widgets/header_widget.dart';
import 'package:vozhaomuz/shared/widgets/my_button.dart';

class LearnLanguagePage extends StatefulWidget {
  const LearnLanguagePage({super.key});

  @override
  State<LearnLanguagePage> createState() => _LearnLanguagePageState();
}

class _LearnLanguagePageState extends State<LearnLanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: AppColors.screenColors,
      ),
      backgroundColor: AppColors.screenColors,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(
              title: 'choose_learning_language'.tr(),
              alignment: Alignment.centerLeft,
              textStyle: AppTextStyles.bigTextStyle,
            ),
            Gap(15),
            MyButton(
              buttonColor: AppColors.buttonColor,
              depth: 0,
              onPressed: null,
              child: LanguageButtonChild(
                title: 'english',
                leading: CountryFlag.fromCountryCode(
                  'gb',
                  width: 50,
                  height: 30,
                  shape: RoundedRectangle(10),
                ),
                isActive: true,
              ),
            ),
            Spacer(),
            MyButton(
              buttonColor: AppColors.buttonColor,
              backButtonColor: AppColors.backButtonColor,
              onPressed: () async {
                WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartPage()),
                  );
                });
              },
              child: Center(
                child: Text('next'.tr(), style: AppTextStyles.mediumTextButton),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
