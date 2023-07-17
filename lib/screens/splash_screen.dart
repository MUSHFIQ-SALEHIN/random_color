// ignore_for_file: public_member_api_docs
import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:random_color/utils/routes.dart';
import 'package:random_color/utils/strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _random = Random();
  final fontSize = 35.0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: AnimatedTextKit(
            pause: const Duration(microseconds: 10),
            animatedTexts: [
              FadeAnimatedText(
                random,
                textStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color:  generateRandomColor(),
                ),
              ),
              FadeAnimatedText(
                color,
                textStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color:  generateRandomColor(),
                ),
              ),
              FadeAnimatedText(
                generator,
                textStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: generateRandomColor(),
                ),
              ),
            ],
            isRepeatingAnimation: false,
            onFinished: () {
              context.go(Routes.homeScreen);
            },
          ),
        ),
      ),
    );
  }

  Color generateRandomColor() {
    return Colors.primaries[_random.nextInt(Colors.primaries.length)];
  }
}
