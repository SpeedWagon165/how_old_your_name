import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:how_old_your_name/views/home_page.dart';
import 'package:how_old_your_name/constants/dark_light_theme.dart';

import '../generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: kLightMode,
      dark: kDarkMode,
      initial: AdaptiveThemeMode.dark,
      builder: (light, dark) => MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Adaptive Theme Demo',
        theme: light,
        darkTheme: dark,
        home: const HomePage(),
      ),
    );
  }
}
