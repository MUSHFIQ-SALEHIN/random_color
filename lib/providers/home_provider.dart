import 'dart:math';
import 'package:flutter/material.dart';

/// Handling Home screen functionalities
class HomeProvider extends ChangeNotifier {
  Color randomColor =
      Colors.primaries[Random().nextInt(Colors.primaries.length)];

  /// Change color
  void changeColor() {
    randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    notifyListeners();
  }
}
