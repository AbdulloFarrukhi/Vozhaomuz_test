import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vozhaomuz/core/constants/app_text_styles.dart';

class LanguageButtonChild extends StatelessWidget {
  final String title;
  final Widget leading;
  final bool isActive;

  const LanguageButtonChild({
    super.key,
    required this.title,
    required this.leading,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        leading,
        Gap(10),
        Text(
          title.tr(),
          style: isActive ? AppTextStyles.mediumTextButton : null,
        ),
      ],
    );
  }
}
