import 'package:flutter/material.dart';

/// Custom class of keys for go router navigation and showing snacbars
class GlobalVariableKeys {
  /// Custom go router navigation key
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();

  ///  Custom key for showing snackbars
  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerState =
      GlobalKey<ScaffoldMessengerState>();
}
