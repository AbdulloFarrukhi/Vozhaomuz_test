import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vozhaomuz/features/rating/presentation/widgets/my_progress.dart';
import 'package:vozhaomuz/features/rating/presentation/widgets/my_trophies.dart';
import 'package:vozhaomuz/features/rating/presentation/widgets/statistic.dart';
import 'package:vozhaomuz/features/rating/presentation/widgets/top_vozhaomuz.dart';
import 'package:vozhaomuz/features/rating/presentation/widgets/user_info.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(243, 241, 254, 255),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
        child: Column(
          children: [
            // Statistiks
            Statistic(),
            // User Information
            UserInfo(),
            Gap(15),
            // My Progress
            MyProgress(),
            Gap(15),
            // My Trophies
            MyTrophies(),
            Gap(15),
            //Top 30 - Vozhaomuz
            TopVozhaomuz(),
          ],
        ),
      ),
    );
  }
}
