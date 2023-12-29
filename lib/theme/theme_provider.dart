import 'package:flutter/material.dart';
import 'package:minimal_notes_app/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  //initial theme
  ThemeData _themeData = lightMode;
  //getter method to access theme
  ThemeData get themeData => _themeData;
  //getter method to check the theme color
  bool get isDarkMode => _themeData == darkMode;
  //setter method to set new theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  //toggle to switch theme
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}