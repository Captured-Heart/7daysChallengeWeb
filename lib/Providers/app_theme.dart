import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:riverpod/riverpod.dart';
import 'package:seven_days_web/src/Theme/theme_class.dart';

final themeModeProvider = StateProvider((ref) => ThemeMode.system);
final setLightMode = StateProvider<ThemeData>((ref) => MyTheme.lightTheme);
final setDarkMode = StateProvider<ThemeData>((ref) => MyTheme.darkTheme);

// final themeModeMain = StateProvider((ref) {
//   final themeMode = ref.watch(theme);

//   if (themeMode == ThemeMode.system) {
//     final brightness = SchedulerBinding.instance.window.platformBrightness;
//     return brightness == Brightness.light;
//   } else {
//     return themeMode == ThemeMode.light;
//   }
  
// });
final isDarkModeProvider = Provider < bool > ((ref) {
  final themeMode = ref.watch(themeModeProvider.state).state;
    
  return themeMode == ThemeMode.dark;
});



// class ThemeProvider extends StateNotifier {
//   ThemeMode themeMode = ThemeMode.system;

//   ThemeProvider() :super(false);

//   bool get isDarkMode {
//     if (themeMode == ThemeMode.system) {
//       final brightness = SchedulerBinding.instance.window.platformBrightness;
//       return brightness == Brightness.light;
//     } else {
//       return themeMode == ThemeMode.light;
//     }
//   }

//   void toggleTheme(bool isOn) {
//     themeMode = isOn ? ThemeMode.light : ThemeMode.dark;
//     notifyListeners();
//   }
// }

// final setDarkMode = StateProvider((ref) => true,);



// class AppThemeState extends ChangeNotifier {
//   var isDarkModeEnabled = false;

//   void setLightTheme() {
//     isDarkModeEnabled = false;
//     notifyListeners();
//   }

//     void setDarkTheme() {
//     isDarkModeEnabled = true;
//     notifyListeners();
//   }
// }

// class AppThemeNotifier extends StateNotifier<bool> {
//   AppThemeNotifier(): super(false);

// //  void 
  
// }

// final apThemeProvider = StateNotifierProvider((ref) {
//   return AppThemeNotifier();
// });

