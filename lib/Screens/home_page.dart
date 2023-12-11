import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100.0,
          title: Text(S.of(context).app_bar_title,
              style: Theme.of(context).primaryTextTheme.titleLarge)),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: Text(S.of(context).title,
                  style: Theme.of(context).primaryTextTheme.titleMedium),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AdaptiveTheme.of(context).toggleThemeMode();
        },
      ),
    );
  }
}
