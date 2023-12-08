
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:how_old_your_name/Screens/home_page.dart';
import 'package:how_old_your_name/Theme/dark_light_theme.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: kDarkMode,
      dark: kLightMode,
      initial: AdaptiveThemeMode.light,
      builder: (light, dark) => MaterialApp(
        title: 'Adaptive Theme Demo',
        theme: light,
        darkTheme: dark,
        home: const HomePage(),
      ),
    );
  }
}