import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vozhaomuz/shared/widgets/my_button.dart';

class HomeBattonsWidget extends StatefulWidget {
  const HomeBattonsWidget({super.key});

  @override
  State<HomeBattonsWidget> createState() => _HomeBattonsWidgetState();
}

class _HomeBattonsWidgetState extends State<HomeBattonsWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool button2 = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    )..repeat(reverse: true);

    _animation = Tween(
      begin: 0.95,
      end: 1.05,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBox(height: 60),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: MyButton(
              height: 50,
              borderRadius: 25.0,
              backButtonColor: const Color.fromARGB(255, 137, 170, 198),
              buttonColor: const Color.fromARGB(255, 198, 223, 243),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.repeat_on_outlined),
                  SizedBox(width: 10),
                  Text("repetition_of_words".tr()),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          ScaleTransition(
            scale: _animation,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.only(bottom: 10),
              child: MyButton(
                height: 60,
                borderRadius: 25.0,
                padding: EdgeInsets.only(left: 25),
                backButtonColor: const Color.fromARGB(255, 1, 137, 249),
                buttonColor: const Color(0xFF30C2F8),
                onPressed: () async {
                  button2 = true;
                  HapticFeedback.mediumImpact();

                  setState(() {});
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/images/lamp_icon.png'),
                    SizedBox(width: 80),
                    Text("learning".tr()),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: MyButton(
              borderRadius: 25.0,
              backButtonColor: const Color.fromARGB(255, 137, 170, 198),
              buttonColor: const Color.fromARGB(255, 198, 223, 243),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.repeat_on_outlined),
                  SizedBox(width: 10),
                  Text("setting_categories".tr()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
