import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'color_widget.dart';
import 'color_controller.dart';

void main() {
  runApp(ProviderScope(child: MyApp())); // Wrap your app with ProviderScope
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {  // Use WidgetRef instead of ScopedReader
    final color = ref.watch(colorProvider);

    void _changeColor() {
      ref.read(colorProvider.notifier).changeColor(
        Colors.primaries[Random().nextInt(Colors.primaries.length)],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Color App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ColorWidget(color: color),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeColor,
              child: Text('Change Color'),
            ),
          ],
        ),
      ),
    );
  }
}
