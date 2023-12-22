import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class MyFortuneWheelPage extends StatefulWidget {
  const MyFortuneWheelPage({super.key});

  @override
  _MyFortuneWheelPageState createState() => _MyFortuneWheelPageState();
}

class _MyFortuneWheelPageState extends State<MyFortuneWheelPage> {
  StreamController<int> selected = StreamController<int>();

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FortuneWheel(
      selected: selected.stream,
      items: const [
        FortuneItem(child: Text('Option 1')),
        FortuneItem(child: Text('Option 2')),
        FortuneItem(child: Text('Option 3')),
        // Добавьте больше элементов здесь
      ],
    );
    // ElevatedButton(
    //   child: const Text('Spin'),
    //   onPressed: () {
    //     selected.add(Random().nextInt(3)); // 3 - количество элементов
    //   },
    // ),
  }
}
