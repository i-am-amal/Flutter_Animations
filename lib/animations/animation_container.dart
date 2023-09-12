import 'package:flutter/material.dart';

class AnimationContainerExample extends StatefulWidget {
  const AnimationContainerExample({super.key});

  @override
  State<AnimationContainerExample> createState() =>
      _AnimationContainerExampleState();
}

class _AnimationContainerExampleState extends State<AnimationContainerExample> {
  double opacity = 1;
  double width = 200;
  double margin = 0;
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(margin),
        width: width,
        color: color,
        duration: const Duration(seconds: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => setState(() => color = Colors.red),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              child: const Text('Animated Color'),
            ),
            ElevatedButton(
              onPressed: () => setState(() => width = 400),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              child: const Text('Animated Width'),
            ),
            ElevatedButton(
              onPressed: () => setState(() => margin = 50),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              child: const Text('Animated Margin'),
            ),
          ],
        ),
      ),
    );
  }
}
