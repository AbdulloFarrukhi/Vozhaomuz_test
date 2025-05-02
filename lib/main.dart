import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vozhaomuz/features/auth/presentation/screens/language_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('ru'), // Русский
        Locale('en'), // Таджикский
      ],
      startLocale: Locale('ru'),
      path: 'assets/translate',
      fallbackLocale: Locale('ru'),
      child: const Main(),
    ),
  );
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      debugShowCheckedModeBanner: false,
      home: LanguagePage(),
    );
  }
}
