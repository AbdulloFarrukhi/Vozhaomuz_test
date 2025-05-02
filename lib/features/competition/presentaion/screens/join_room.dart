import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vozhaomuz/core/constants/app_colors.dart';
import 'package:vozhaomuz/core/constants/app_text_styles.dart';
import 'package:vozhaomuz/shared/widgets/header_widget.dart';
import 'package:vozhaomuz/shared/widgets/my_button.dart';

class JoinRoom extends StatelessWidget {
  const JoinRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(10),
        HeaderWidget(
          title: 'ID и хучраро ворид кунед',
          alignment: Alignment.centerLeft,
          textStyle: AppTextStyles.headingStyle,
        ),
        SizedBox(height: 10),
        MyButton(
          depth: 0,
          onPressed: () {},
          child: TextField(
            keyboardType: TextInputType.number,
            style: AppTextStyles.hintextStyle.copyWith(color: Colors.black),
            cursorWidth: 0,
            cursorHeight: 0,
            decoration: InputDecoration(
              hintText: '25854..',
              hintStyle: AppTextStyles.hintextStyle,
              border: InputBorder.none,
            ),
          ),
        ),
        Gap(50),
        MyButton(
          onPressed: () {},
          width: double.infinity,
          buttonColor: AppColors.backButtonColor,
          depth: 0,
          child: Center(
            child: Text('Чучтучу хучра', style: AppTextStyles.bigTextButton),
          ),
        ),
      ],
    );
  }
}
