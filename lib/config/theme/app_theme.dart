import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepOrange,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(selectedColor >= 0, 
            'Color selected must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Color selected must be less o equal then ${colorList.length - 1}');

  ThemeData getTheme() {
    return ThemeData(
        useMaterial3: true, 
        brightness: isDarkMode? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false
        ));
  }
}
