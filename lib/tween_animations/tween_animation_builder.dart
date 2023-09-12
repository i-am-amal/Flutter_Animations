import 'package:flutter/material.dart';

class TweenAnimationBuilderExample extends StatelessWidget {
  const TweenAnimationBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        duration: const Duration(milliseconds: 500),
        builder: (BuildContext context, double val, Widget? child) {
          return Opacity(
            opacity: val,
            child: Padding(
              padding: EdgeInsets.only(top: val * 20),
              child: const CustomText(),
            ),
          );
        });
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.purple,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This is a Tween Animation Builder Example',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
