import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyProgress extends StatelessWidget {
  const MyProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'my_progress'.tr(),
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          Text(
            'learning_languages'.tr(),
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          Container(
            width: 80,
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 214, 236, 255),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(Icons.emoji_flags, size: 20),
                Text(
                  'English',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 12,
                  top: 15,
                  bottom: 15,
                  right: 25,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 243, 216),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/coin.png'),
                    SizedBox(height: 4),
                    Text('0', style: TextStyle(fontWeight: FontWeight.w700)),
                    Text(
                      'coins_earned'.tr(),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 9,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 15,
                  bottom: 15,
                  right: 14,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 255, 247),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.auto_graph,
                      color: const Color.fromARGB(255, 0, 207, 141),
                      size: 25,
                    ),
                    SizedBox(height: 4),
                    Text('0', style: TextStyle(fontWeight: FontWeight.w700)),
                    Text(
                      'wins_in_battles'.tr(),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 9,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 12,
                  top: 15,
                  bottom: 15,
                  right: 25,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 244, 255),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.copy_rounded,
                      color: const Color.fromARGB(255, 62, 171, 255),
                      size: 25,
                    ),
                    SizedBox(height: 4),
                    Text('0', style: TextStyle(fontWeight: FontWeight.w700)),
                    Text(
                      'coins_earned'.tr(),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 9,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
