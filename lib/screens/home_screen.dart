import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_color/providers/home_provider.dart';
import 'package:random_color/utils/strings.dart';

/// Random Color Background Screen
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<HomeScreen> {
  final fontSize = 35.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          return InkWell(
            onTap: () {
              provider.changeColor();
            },
            child: ColoredBox(
              color: provider.randomColor,
              child: Center(
                child: Text(
                  helloThere,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
