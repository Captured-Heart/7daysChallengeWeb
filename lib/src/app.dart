import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Provider, ChangeNotifierProvider;
import 'package:provider/provider.dart';
import 'package:seven_days_web/Providers/app_theme.dart';
import 'package:seven_days_web/src/Theme/theme_class.dart';

import 'sample_feature/sample_item_details_view.dart';
import 'sample_feature/ist_div_screen.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

class MyApp extends ConsumerWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lightMode = ref.watch(setLightMode);
    final darkMode = ref.watch(setDarkMode);


    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) {
            final themeProvider = Provider.of<ThemeProvider>(context);

        // return AnimatedBuilder(
        //   animation: settingsController,
        //   builder: (BuildContext context, Widget? child) {
            return 
            
            MaterialApp(
              restorationScopeId: 'app',
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en', ''),
              ],
              onGenerateTitle: (BuildContext context) =>
                  AppLocalizations.of(context)!.appTitle,
              theme: lightMode,
              darkTheme: darkMode,
              themeMode: themeProvider.themeMode,
              onGenerateRoute: (RouteSettings routeSettings) {
                return MaterialPageRoute<void>(
                  settings: routeSettings,
                  builder: (BuildContext context) {
                    switch (routeSettings.name) {
                      case SettingsView.routeName:
                        return SettingsView(controller: settingsController);
                      case SampleItemDetailsView.routeName:
                        return const SampleItemDetailsView();
                      case IstDivScreen.routeName:
                      default:
                        return const IstDivScreen();
                    }
                  },
                );
              },
            );
        //   },
        // );
      }
    );
  }
}
