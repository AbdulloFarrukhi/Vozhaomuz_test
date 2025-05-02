import 'package:flutter/material.dart';
import 'package:vozhaomuz/features/mywords/presentation/screens/add_words_screen.dart';
import 'package:vozhaomuz/shared/widgets/my_button.dart';

class AddWordsButtonWidget extends StatefulWidget {
  final Icon? icon;
  final String? text;
  final Color? color;
  final Color? backButtonColor;
  final Color? textColor;
  const AddWordsButtonWidget({
    super.key,
    this.icon,
    this.text,
    this.color,
    this.textColor,
    this.backButtonColor,
  });

  @override
  State<AddWordsButtonWidget> createState() => _AddWordsButtonWidgetState();
}

class _AddWordsButtonWidgetState extends State<AddWordsButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.44,
      height: 110,
      child: MyButton(
        backButtonColor: widget.backButtonColor,
        buttonColor: widget.color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: widget.icon),
            Text(
              "${widget.text}",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: widget.textColor,
              ),
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddWordsScreen()),
          );
        },
      ),
    );
  }
}
