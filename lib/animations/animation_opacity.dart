import 'package:flutter/material.dart';

class AnimationOpacityExample extends StatefulWidget {
  const AnimationOpacityExample({super.key});

  @override
  State<AnimationOpacityExample> createState() =>
      _AnimationContainerExampleState();
}

class _AnimationContainerExampleState extends State<AnimationOpacityExample> {
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
            ElevatedButton(
              onPressed: () => setState(() => opacity = 0),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              child: const Text('Animated Opacity'),
            ),
            AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(seconds: 3),
              child: const Text(
                'When clicking on the button this text will hide',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
