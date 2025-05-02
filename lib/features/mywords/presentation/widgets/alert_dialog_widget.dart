import 'package:flutter/material.dart';
import 'package:vozhaomuz/shared/widgets/my_button.dart';

// Функсияе ки AlertDialog нишон медиҳад
void alertDialogWidget(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: const Text(
          'Не хватает слов!',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: SizedBox(
          child: const Text(
            'Как минимум 4 слов',
            style: TextStyle(fontSize: 16),
          ),
        ),
        actions: [
          SizedBox(
            child: MyButton(
              width: double.infinity,
              child: Text(
                textAlign: TextAlign.center,
                'Ясно',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      );
    },
  );
}
