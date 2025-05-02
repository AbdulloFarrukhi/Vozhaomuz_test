import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyTrophies extends StatelessWidget {
  const MyTrophies({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: double.infinity,
      height: 260,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'my_trophies'.tr(),
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text(
                'all'.tr(),
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.lightBlue,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [TrophiesWidget(), TrophiesWidget(), TrophiesWidget()],
          ),
        ],
      ),
    );
  }
}

class TrophiesWidget extends StatelessWidget {
  const TrophiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 17, horizontal: 6),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 230, 244, 255),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              CircleAvatar(
                maxRadius: 20,
                backgroundColor: const Color.fromARGB(255, 199, 199, 199),
                backgroundImage: AssetImage('assets/images/magic_book.png'),
              ),
              SizedBox(height: 25),
              Text(
                'beginner_in_words'.tr(),
                style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Text('0 ', style: TextStyle(color: Colors.blue, fontSize: 10)),
              Text('/50', style: TextStyle(fontSize: 10)),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.23,
          height: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 212, 212, 212),
          ),
        ),
      ],
    );
  }
}
