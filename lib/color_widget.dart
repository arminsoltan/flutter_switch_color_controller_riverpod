import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
  final Color color;

  const ColorWidget({required this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
