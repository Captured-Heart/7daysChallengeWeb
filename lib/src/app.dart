import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    hide Provider, ChangeNotifierProvider;
import 'package:provider/provider.dart';
import 'package:seven_days_web/Presentation/Mobile_Screens/third_mobile_screen.dart';
import 'package:seven_days_web/Providers/app_theme.dart';
import 'package:seven_days_web/src/utils/responsive.dart';

import '../Providers/utils_providers.dart';
import 'sample_feature/desktop_screen.dart';
import 'settings/settings_controller.dart';

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

          return MaterialApp(
              restorationScopeId: 'app',
              debugShowCheckedModeBanner: false,
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
              theme: darkMode,
              darkTheme: darkMode,
              themeMode: themeProvider.themeMode,
              home: const Responsive(
                  desktop: DesktopScreen(),
                  tablet: DesktopScreen(),
                  mobile: ThirdMobileScreen()
                  //  FirstMobileScreen()
                  // SafeArea(
                  //   child: PageViewJ(
                  //     modifier: const Modifier(
                  //       viewportFraction: 0.23,
                  //       padEnds: false,
                  //       scrollDirection: Axis.vertical,
                  //     ),
                  //     transform: CubeTransform(),
                  //     itemBuilder: (context, index) {
                  //       return const FirstMobileScreen();
                  //     },
                  //   ),
                  // ),
                  )
              // onGenerateRoute: (RouteSettings routeSettings) {
              //   return MaterialPageRoute<void>(
              //     settings: routeSettings,
              //     builder: (BuildContext context) {
              //       switch (routeSettings.name) {
              //         case SettingsView.routeName:
              //           return SettingsView(controller: settingsController);
              //         case SampleItemDetailsView.routeName:
              //           return const SampleItemDetailsView();
              //         case DesktopScreen.routeName:
              //         default:
              //           return const DesktopScreen();
              //       }
              //     },
              //   );
              // },
              );
          //   },
          // );
        });
  }
}
