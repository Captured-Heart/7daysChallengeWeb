import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seven_days_web/Presentation/Widgets/bg_screen.dart';

import '../../Providers/app_theme.dart';
import '../../src/localization/locales.dart';
import '../Widgets/clip_path_background.dart';
import '../Widgets/theme_switch.dart';

class FirstMobileScreen extends StatelessWidget {
  const FirstMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SafeArea(
      child: Scaffold(
          body: SevenDaysBG(
        size: size,

        //! NAV BAR
        navBar: Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            clipBehavior: Clip.none,
            height: size.height * 0.1,
            width: size.width,
            decoration: BoxDecoration(
                //TODO: ADJUST COLOR
                color: Theme.of(context).highlightColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.access_alarm),
                ThemeSwitchWeb(themeProvider: themeProvider),
              ],
            ),
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.06,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),

                //! HI WE ARE HUMANS
                AutoSizeText.rich(
                  TextSpan(
                    text: AppLocales.of(context).firstPageHI,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                    children: [
                      TextSpan(
                        text: AppLocales.of(context).firstPageHumans,
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              fontSize: 23,
                            ),
                      ),
                    ],
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.start,
                ),
              ],
            ),

            //! AND WE ARE DEVELOPERS
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                AutoSizeText.rich(
                  TextSpan(
                      text: AppLocales.of(context).andWeAre,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 22),
                      children: [
                        TextSpan(
                          text: AppLocales.of(context).firstPageDevelopers,
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(fontSize: 25),
                        )
                      ]),
                  maxLines: 1,
                ),
              ],
            ),

            //?! UI AND THE CODE
            AutoSizeText.rich(
              TextSpan(
                  text: AppLocales.of(context).the,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 18),
                  children: [
                    TextSpan(
                      text: AppLocales.of(context).ui,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontSize: 27),
                    ),
                    TextSpan(
                      text: AppLocales.of(context).andThe,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 18),
                    ),
                    TextSpan(
                      text: AppLocales.of(context).code,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontSize: 27),
                    )
                  ]),
              maxLines: 1,
            ),

            //! 7days CHALLENGE
            Text(
              AppLocales.of(context).sevendays,
              style: Theme.of(context).textTheme.headline1,
            ),
            AutoSizeText(
              AppLocales.of(context).challenge,
              style: Theme.of(context).textTheme.headline1,
              textScaleFactor: 1.1,
            ),

            //! CORNELIUS AND MARCEL PICTURES
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //! CORNELIUS PICTURE
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipLeftBackground(
                      left: true,
                      widget: Image.asset(
                        'assets/images/cornelius.png',
                        width: size.width * 0.28,
                        height: size.height * 0.32,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      AppLocales.of(context).firstPageCornelius,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 16),
                      // textScaleFactor: 1.1,
                    ),
                    Text(
                      AppLocales.of(context).firstPageUiDeveloper,
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontSize: 16),
                    )
                  ],
                ),

                //! MARCEL PICTURE
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ClipLeftBackground(
                      left: false,
                      widget: Image.asset(
                        'assets/images/marcel.png',
                        width: size.width * 0.25,
                        height: size.height * 0.33,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      AppLocales.of(context).firstPageMarcel,
                      textScaleFactor: 1.4,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 16),
                    ),
                    Text(
                      AppLocales.of(context).firstPageFlutterDeveloper,
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
