import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomsStyle extends StatelessWidget {
  const BottomsStyle({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0),
      child: Material(
          color: Colors.brown,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
          child: child),
    );
  }
}
