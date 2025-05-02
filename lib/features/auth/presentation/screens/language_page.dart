import 'package:country_flags/country_flags.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vozhaomuz/core/constants/app_colors.dart';
import 'package:vozhaomuz/core/constants/app_text_styles.dart';
import 'package:vozhaomuz/features/auth/presentation/screens/learn_language_page.dart';
import 'package:vozhaomuz/features/auth/presentation/widgets/language_button_child.dart';
import 'package:vozhaomuz/shared/widgets/header_widget.dart';
import 'package:vozhaomuz/shared/widgets/my_button.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    var currentLocale = context.locale;
    int choosedLanguage = currentLocale.languageCode == 'en' ? 0 : 1;
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.screenColors),
      backgroundColor: AppColors.screenColors,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            HeaderWidget(
              title: 'choose_your_own_language'.tr(),
              alignment: Alignment.centerLeft,
              textStyle: AppTextStyles.bigTextStyle,              
            ),
            Column(
              children: [
                MyButton(
                  buttonColor:
                      choosedLanguage == 0 ? AppColors.buttonColor : null,

                  depth: 0,
                  onPressed: () async {
                    context.setLocale(Locale('en'));
                    if (mounted) setState(() {});
                  },
                  width: double.infinity,
                  child: LanguageButtonChild(
                    isActive: choosedLanguage == 0,
                    leading: CountryFlag.fromCountryCode(
                      'tj',
                      width: 50,
                      height: 30,
                      shape: RoundedRectangle(10),
                    ),
                    title: 'tajik',
                  ),
                ),
                SizedBox(height: 10),
                MyButton(
                  depth: 0,
                  buttonColor:
                      choosedLanguage == 1 ? AppColors.buttonColor : null,

                  onPressed: () async {
                    context.setLocale(Locale('ru'));
                    if (mounted) setState(() {});
                  },
                  width: double.infinity,
                  child: LanguageButtonChild(
                    title: 'russian',
                    leading: CountryFlag.fromCountryCode(
                      'ru',
                      width: 50,
                      height: 30,
                      shape: RoundedRectangle(10),
                    ),
                    isActive: choosedLanguage == 1,
                  ),
                ),
              ],
            ),
            Spacer(),

            MyButton(
              backButtonColor: AppColors.backButtonColor,
              buttonColor: AppColors.buttonColor,
              width: double.infinity,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LearnLanguagePage()),
                );
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
