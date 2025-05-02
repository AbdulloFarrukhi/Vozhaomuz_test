import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          CircleAvatar(
            maxRadius: 28,
            backgroundColor: const Color.fromARGB(255, 255, 152, 7),
            child: Image.asset('assets/images/mask_group.png'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Сабрина',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 3),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 214, 236, 255),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.military_tech,
                              color: Colors.blue,
                              size: 20,
                            ),
                            Text(
                              'place'.tr(),
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 241, 199),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 5,
                              child: Image.asset('assets/images/coin.png'),
                            ),
                            SizedBox(width: 2),
                            Text(
                              '50',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 207, 155, 0),
                                fontWeight: FontWeight.w900,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
