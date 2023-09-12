import 'package:flutter/material.dart';
import 'package:flutter_animations/animations/animation_container.dart';
import 'package:flutter_animations/animations/animation_opacity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: AnimationContainerExample(),
      home: AnimationOpacityExample(),
    );
  }
}
