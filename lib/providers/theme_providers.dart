import 'package:flutter/material.dart';

class ThemeProviders with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeData get currentTheme => _isDarkMode ? _darkTheme : _lightTheme;

  ThemeData get _lightTheme => ThemeData.light().copyWith(
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'custom',
            ),
        canvasColor: Colors.purple.shade50,
      );

  ThemeData get _darkTheme => ThemeData.dark().copyWith(
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'custom',
            ),
        canvasColor: Colors.black,
      );

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
