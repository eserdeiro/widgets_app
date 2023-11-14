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

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 
            'Color selected must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Color selected must be less o equal then ${colorList.length - 1}');

  ThemeData getTheme() {
    return ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false
        ));
  }
}
