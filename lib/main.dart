import 'package:flutter/material.dart';
import 'package:vibrissa/theme/appbar_theme.dart';

import 'router/router.dart';
import 'theme/text_theme.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Kaida',
      routerConfig: router,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF151414),
          brightness: Brightness.light,
        ),
        textTheme: CustomTextTheme.lightTextTheme,
        appBarTheme: CustomAppBarTheme.lightAppBarTheme,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF151414),
          brightness: Brightness.dark,
        ),
        textTheme: CustomTextTheme.darkTextTheme,
        appBarTheme: CustomAppBarTheme.darkAppBarTheme,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
