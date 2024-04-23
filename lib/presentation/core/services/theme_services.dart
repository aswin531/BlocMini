import 'package:flutter/material.dart';

class ThemeServiceProvider extends ChangeNotifier {
  bool isDarkMode = false;

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }

    IconData getThemeIcon() {
    return isDarkMode ? Icons.nightlight_round : Icons.wb_sunny;
  }
}
