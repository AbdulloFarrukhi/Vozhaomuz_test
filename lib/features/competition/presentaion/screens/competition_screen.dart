import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vozhaomuz/core/constants/app_colors.dart';
import 'package:vozhaomuz/core/constants/app_text_styles.dart';
import 'package:vozhaomuz/features/competition/presentaion/screens/create_room.dart';
import 'package:vozhaomuz/features/competition/presentaion/screens/join_room.dart';
import 'package:vozhaomuz/shared/widgets/header_widget.dart';
import 'package:vozhaomuz/shared/widgets/my_button.dart';

class CompetitionScreen extends StatefulWidget {
  const CompetitionScreen({super.key});

  @override
  State<CompetitionScreen> createState() => _CompetitionScreenState();
}

class _CompetitionScreenState extends State<CompetitionScreen> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenColors,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyButton(
                  padding: EdgeInsets.zero,
                  width: double.infinity,
                  buttonColor: AppColors.buttonColor,
                  backButtonColor: AppColors.backButtonColor,
                  height: MediaQuery.of(context).size.height * 0.13,
                  onPressed: null,
                  isEnabled: true,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/samurai.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text(
                      'copmetition'.tr(),
                      style: AppTextStyles.bigTextButton.copyWith(fontSize: 20),
                    ),
                  ),
                ),
                Column(
                  children: [
                    HeaderWidget(
                      title: 'game_mode'.tr(),
                      alignment: Alignment.centerLeft,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: MyButton(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            buttonColor:
                                tabIndex == 0 ? AppColors.buttonColor : null,
                            backButtonColor:
                                tabIndex == 0
                                    ? AppColors.backButtonColor
                                    : null,
                            height: MediaQuery.of(context).size.height * 0.10,
                            onPressed: () {
                              setState(() {
                                tabIndex = 0;
                              });
                            },
                            child: Center(
                              child: Text(
                                "create_room".tr(),
                                style:
                                    tabIndex == 0
                                        ? AppTextStyles.mediumTextButton
                                        : AppTextStyles.mediumTextButton
                                            .copyWith(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Gap(15),
                        Flexible(
                          child: MyButton(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            buttonColor:
                                tabIndex == 1 ? AppColors.buttonColor : null,
                            backButtonColor:
                                tabIndex == 1
                                    ? AppColors.backButtonColor
                                    : null,
                            height: MediaQuery.of(context).size.height * 0.10,
                            onPressed: () {
                              setState(() {
                                tabIndex = 1;
                              });
                            },
                            child: Center(
                              child: SizedBox(
                                width: 100,
                                child: Text(
                                  'join_room'.tr(),
                                  style:
                                      tabIndex == 1
                                          ? AppTextStyles.mediumTextButton
                                          : AppTextStyles.mediumTextButton
                                              .copyWith(color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    tabIndex == 0 ? CreateRoom() : JoinRoom(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
