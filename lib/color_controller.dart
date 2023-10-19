import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorController extends StateNotifier<Color> {
  ColorController(Color initialState) : super(initialState);

  void changeColor(Color newColor) {
    state = newColor;
  }
}

final colorProvider = StateNotifierProvider<ColorController, Color>((ref) => ColorController(Colors.blue));
