import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../src/Theme/theme_class.dart';

final switchListTileProvider = StateProvider((ref) => 0);

final themeModeProvider = StateProvider((ref) => ThemeMode.dark);
final setLightMode = StateProvider<ThemeData>((ref) => MyTheme.lightTheme);

final setDarkMode = StateProvider<ThemeData>((ref) => MyTheme.darkTheme);


final pageControllerProvider =
    Provider<PageController>((ref) => PageController());

