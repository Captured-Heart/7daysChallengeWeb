import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../Providers/app_theme.dart';
import '../../src/utils/color_constant.dart';

class ThemeSwitchWeb extends StatelessWidget {
  const ThemeSwitchWeb({
    Key? key,
    required this.themeProvider,
  }) : super(key: key);

  final ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 100.0,
      height: 50.0,
      toggleSize: 45.0,
      value: themeProvider.isDarkMode,
      borderRadius: 30.0,
      padding: 2.0,
      activeToggleColor: const Color(0xFF6E40C9),
      inactiveToggleColor: const Color(0xFF2F363D),
      activeSwitchBorder: Border.all(
        color: const Color(0xFF3C1E70),
        width: 6.0,
      ),
      inactiveSwitchBorder: Border.all(
        color: const Color(0xFFD1D5DA),
        width: 6.0,
      ),
      activeColor: ColorConstant.darkBgColor,
      inactiveColor: Colors.white,
      activeIcon: const Icon(
        Icons.nightlight_round,
        color: Color(0xFFF8E3A1),
      ),
      inactiveIcon: const Icon(
        Icons.wb_sunny,
        color: Color(0xFFFFDF5D),
      ),
      onToggle: (valu) {
        final provider =
            Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(valu);
      },
    );
  }
}
