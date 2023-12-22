import 'dart:async';
import 'dart:math';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

import '../animations/wheel_custom.dart';
import '../constants/consts_cuters.dart';
import '../generated/l10n.dart';
import '../models/model_sized_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamController<int> selected = StreamController<int>();
  final Random random = Random();
  Pricoli pricoli = Pricoli();
  int selectedValue = -1;

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final primTheme = Theme.of(context).primaryTextTheme;
    final text = S.of(context);
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100.0,
          title: Text(text.app_bar_title, style: primTheme.titleLarge)),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: Text(text.title, style: primTheme.titleMedium),
            ),
            const SizedBox(height: 100.0),
            selectedValue == -1
                ? const BottomsStyle(
                    child: SizedBox(
                      height: 180.0,
                      child: Center(
                        child: Text('sdfs'),
                      ),
                    ),
                  )
                : BottomsStyle(
                    child: SizedBox(
                      height: 180.0,
                      child: Center(
                        child: Text(
                          pricoli.choises[1],
                          style: primTheme.titleMedium,
                        ),
                      ),
                    ),
                  ),
            const SizedBox(
              height: 30.0,
            ),
            BottomsStyle(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: SizedBox(
                    height: 50.0,
                    child: Text(
                      'Нажми если посмеешь',
                      style: primTheme.titleMedium,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            FortuneBar(
              selected: selected.stream,
              items: const [
                FortuneItem(child: Text('1 год')),
                FortuneItem(child: Text('5 лет')),
                FortuneItem(child: Text('2 года')),
                FortuneItem(child: Text('10 лет')),
                FortuneItem(child: Text('2 недели')),
                FortuneItem(child: Text('60 лет')),
                FortuneItem(child: Text('1 месяц')),
                FortuneItem(child: Text('1 день')),
                FortuneItem(child: Text('150 лет')),
              ],
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
