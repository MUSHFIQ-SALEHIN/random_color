import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_color/providers/home_provider.dart';
import 'package:random_color/utils/global_variable_keys.dart';
import 'package:random_color/utils/router_config.dart';
import 'package:random_color/utils/theme.dart';

///Random Color changing app.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ],
      child: MaterialApp.router(
        scaffoldMessengerKey: GlobalVariableKeys.scaffoldMessengerState,
        title: 'Random',
        theme: appTheme,
        routerConfig: routerConfig,
      ),
    );
  }
}
