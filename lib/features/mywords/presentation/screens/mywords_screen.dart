import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vozhaomuz/features/mywords/presentation/widgets/add_words_button_widget.dart';
import 'package:vozhaomuz/features/mywords/presentation/widgets/mybutton_widget.dart';

class MywordsScreen extends StatefulWidget {
  const MywordsScreen({super.key});

  @override
  State<MywordsScreen> createState() => _MywordsScreenState();
}

class _MywordsScreenState extends State<MywordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 40),
        child: Column(
          children: [
            //Name of page
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Мои слова',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Импорт',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            // Four buttons
            SizedBox(
              width: double.infinity,
              height: 240,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              MybuttonWidget(
                                backButtonColor: Colors.pink,
                                icon: Icon(
                                  Icons.menu_book_rounded,
                                  color: Colors.pink[400],

                                  size: 33,
                                ),
                                minText: '0 слов',
                                bigText: 'Мои ошибки',
                                color: const Color.fromARGB(255, 255, 230, 238),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              MybuttonWidget(
                                backButtonColor: const Color.fromARGB(
                                  255,
                                  54,
                                  130,
                                  57,
                                ),
                                icon: Icon(
                                  size: 33,
                                  Icons.check_circle_sharp,
                                  color: Colors.green,
                                ),
                                minText: '0 слов',
                                bigText: 'Выученные слова',
                                color: const Color.fromARGB(255, 219, 255, 237),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              MybuttonWidget(
                                icon: Icon(
                                  Icons.restart_alt,
                                  color: Colors.white,
                                  size: 33,
                                ),
                                minText: '0 слов',
                                textColor: Colors.white,
                                bigText: 'Мои ошибки',
                                backButtonColor: const Color.fromARGB(
                                  255,
                                  131,
                                  100,
                                  59,
                                ),
                                color: const Color.fromARGB(255, 255, 183, 88),
                              ),
                            ],
                          ),
                        ],
                      ),
                      AddWordsButtonWidget(
                        backButtonColor: Colors.blue,
                        color: const Color.fromARGB(255, 97, 184, 255),
                        text: 'Добавить\n    слова',
                        textColor: Colors.white,
                        icon: Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                          size: 33,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            //My Words
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text(
                      'Мои слова',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0),
                    height: 4,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ),
            //Big icon "You have no words"
            Gap(50),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.menu_book_outlined,
                          color: Colors.red,
                          size: 90,
                        ),
                        Icon(
                          Icons.cancel_outlined,
                          color: Colors.red,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'У вас нет слов!',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
