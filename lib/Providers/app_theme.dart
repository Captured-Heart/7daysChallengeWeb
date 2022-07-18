import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:riverpod/riverpod.dart';
import 'package:seven_days_web/src/Theme/theme_class.dart';

// final theme = Provider((ref) => MyTheme());

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.light;
    } else {
      return themeMode == ThemeMode.light;
    }
  }

// final isDarkModeProvider = Provider <bool>((ref) {
//   final themeMode = ref.watch(themeModeProvider.state).state;
//      if (themeMode == ThemeMode.system) {
//       final brightness = SchedulerBinding.instance.window.platformBrightness;
//       return brightness == Brightness.light;
//     } else {
//       return themeMode == ThemeMode.light;
//     }
//   // return themeMode == ThemeMode.dark;
// });
  toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
