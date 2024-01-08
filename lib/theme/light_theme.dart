import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LigtColor();
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.green),
      appBarTheme: const AppBarTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)))
      ),
      scaffoldBackgroundColor: Colors.white,
      buttonTheme: ButtonThemeData(colorScheme: ColorScheme.light(
        onPrimary: Colors.purple,
        onSecondary: _lightColor.barney
        )
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(Colors.green),
        side: const BorderSide(color: Colors.green)
      )
    );
  }
}

class _LigtColor {
  final Color redTextColor = Colors.red;
  final Color barney = const Color.fromARGB(174, 19, 195, 36);
}
