import 'package:flutter/material.dart';
import 'package:flutter_animations/built_in_animations/animation_container.dart';
import 'package:flutter_animations/built_in_animations/animation_opacity.dart';
import 'package:flutter_animations/tween_animations/tween_animation_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: AnimationContainerExample(),
      // home: AnimationOpacityExample(),
      home: TweenAnimationBuilderExample(),
    );
  }
}
