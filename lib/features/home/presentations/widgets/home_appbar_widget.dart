import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget homeAppBar() {
  return AppBar(
    surfaceTintColor: Colors.white,
    backgroundColor: Colors.white,
    elevation: 0,
    toolbarHeight: 80,
    leadingWidth: double.infinity,
    leading: Container(
      width: 200,
      height: 200,
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 25,
            child: Image.asset('assets/images/mask_group.png'),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Сабрина", style: TextStyle(fontSize: 20)),
              Text(
                "buy_premium".tr(),
                style: TextStyle(color: Colors.amber, fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    ),
    actions: [
      SizedBox(
        width: 85,
        child: Row(
          children: [
            Text("50", style: TextStyle(fontSize: 23)),
            SizedBox(width: 5),
            CircleAvatar(
              radius: 8,
              child: Image.asset('assets/images/coin.png'),
            ),
          ],
        ),
      ),
    ],
  );
}
