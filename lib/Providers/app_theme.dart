import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:riverpod/riverpod.dart';
import 'package:seven_days_web/src/Theme/theme_class.dart';


// final theme = Provider((ref) => MyTheme());
final themeModeProvider = StateProvider((ref) => ThemeMode.dark);
final setLightMode = StateProvider<ThemeData>((ref) => MyTheme.lightTheme);


final setDarkMode = StateProvider<ThemeData>((ref) => MyTheme.darkTheme);

// // final themeModeMain = StateProvider((ref) {
// //   final themeMode = ref.watch(theme);

// //   if (themeMode == ThemeMode.system) {
// //     final brightness = SchedulerBinding.instance.window.platformBrightness;
// //     return brightness == Brightness.light;
// //   } else {
// //     return themeMode == ThemeMode.light;
// //   }
  
// // });
// final isDarkModeProvider = Provider < bool > ((ref) {
//   final themeMode = ref.watch(themeModeProvider.state).state;
    
//   return themeMode == ThemeMode.dark;
// });


// // ignore: non_constant_identifier_names
// final appThemeStateNotifier = StateNotifierProvider((ref) {
//   return ThemeProvider();
// });

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  // ThemeProvider() :super(false);

// void setLightTheme() => state = false;
//   void setDarkTheme() => state = true;


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

