import 'package:flutter/material.dart';

import 'ligh_theme.dart';


class ThemeNotifer extends ChangeNotifier {
  bool isLighTheme = false;

  void changeTheme() {
    isLighTheme = !isLighTheme;
    notifyListeners();
  }

  ThemeData get currentTheme => !isLighTheme ? LighTheme().theme : ThemeData.dark();
}