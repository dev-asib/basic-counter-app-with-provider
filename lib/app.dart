import 'package:flutter/material.dart';
import 'package:provider_state_management/counter_screen.dart';
import 'package:provider_state_management/style.dart';

class CounterProviderApp extends StatelessWidget {
  const CounterProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
      theme: buildLightThemeData(),
      darkTheme: buildDarkThemeData(),
      themeMode: ThemeMode.system,
    );
  }
}
