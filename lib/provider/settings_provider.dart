import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {

  ThemeMode themeMode = ThemeMode.dark;

  // changeTheme(ThemeMode newTheme) {
  //   themeMode = newTheme;
  //   notifyListeners();
  // }

  enableDarkTheme(){
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  enableLightTheme(){
    themeMode = ThemeMode.light;
    notifyListeners();
  }

}
