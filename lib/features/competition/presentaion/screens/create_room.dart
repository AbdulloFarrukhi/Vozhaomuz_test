import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vozhaomuz/core/constants/app_text_styles.dart';
import 'package:vozhaomuz/shared/widgets/header_widget.dart';
import 'package:vozhaomuz/shared/widgets/my_button.dart';

class CreateRoom extends StatelessWidget {
  const CreateRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(
          headingPadding: EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 10,
          ).copyWith(top: 20),
          title: 'Категория дарс',
          alignment: Alignment.centerLeft,
        ),
        MyButton(
          isEnabled: true,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Food'), Icon(Icons.arrow_forward_ios_outlined)],
          ),
        ),
        SizedBox(height: 20),
        HeaderWidget(
          title: 'Шумораи калимахо',
          alignment: Alignment.centerLeft,
        ),
        MyButton(
          isEnabled: true,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('4'), Icon(Icons.arrow_forward_ios_outlined)],
          ),
        ),
        SizedBox(height: 20),
        HeaderWidget(title: 'Шумораи тангахо', alignment: Alignment.centerLeft),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyButton(
              buttonColor: Colors.blue,
              depth: 0,
              onPressed: () {},
              child: Column(
                children: [
                  Text(
                    '6',
                    style: AppTextStyles.headingStyle.copyWith(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.confirmation_num),
                ],
              ),
            ),
            MyButton(
              depth: 0,
              onPressed: () {},
              child: Column(
                children: [
                  Text(
                    '6',
                    style: AppTextStyles.headingStyle.copyWith(fontSize: 18),
                  ),
                  Icon(Icons.confirmation_num),
                ],
              ),
            ),
            MyButton(
              depth: 0,
              onPressed: () {},
              child: Column(
                children: [
                  Text(
                    '6',
                    style: AppTextStyles.headingStyle.copyWith(fontSize: 18),
                  ),
                  Icon(Icons.confirmation_num),
                ],
              ),
            ),
            MyButton(
              depth: 0,
              onPressed: () {},
              child: Column(
                children: [
                  Text(
                    '6',
                    style: AppTextStyles.headingStyle.copyWith(fontSize: 18),
                  ),
                  Icon(Icons.confirmation_num),
                ],
              ),
            ),
          ],
        ),
        Gap(20),
        MyButton(
          buttonColor: Colors.lightBlue,
          backButtonColor: Colors.blue,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.door_back_door_outlined, color: Colors.white),
              SizedBox(width: 15),
              Text('Сохтани хучра', style: AppTextStyles.bigTextButton),
            ],
          ),
        ),
      ],
    );
  }
}
