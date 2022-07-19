import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:seven_days_web/Presentation/Widgets/bg_screen.dart';

import '../../Providers/app_theme.dart';
import '../../src/localization/locale_interface.dart';
import '../../src/localization/locales.dart';
import '../../src/utils/color_constant.dart';
import '../Widgets/clip_path_background.dart';
import '../Widgets/theme_switch.dart';

class IstMobileScreen extends StatelessWidget {
   IstMobileScreen({Key? key, required this.text, required this.textStyle, required this.size}) : super(key: key);
final _scaffoldKey = GlobalKey<ScaffoldState>();
 final LocaleInterface text;
  final TextTheme textStyle;
  final Size size;
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              //TODO: ADJUST COLOR
              color: Theme.of(context).highlightColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/bird.png',
                        colorBlendMode: BlendMode.darken,
                        height: kToolbarHeight,
                        color: Theme.of(context).highlightColor,
                      ),
                    ),
                    Text(
                      '7Days',
                      style: GoogleFonts.dancingScript(
                        wordSpacing: 10,
                        letterSpacing: 6,
                        fontSize: 25,

                        // color: Colors.purple
                      ),
                    )
                  ],
                ),
                // ThemeSwitchWeb(themeProvider: themeProvider),
                IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                  icon: const Icon(Icons.menu, size: 40,),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                )
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
                    text: text.firstPageHI,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                    children: [
                      TextSpan(
                        text: text.firstPageHumans,
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
                      text: text.andWeAre,
                      style: textStyle
                          .headline1!
                          .copyWith(fontSize: 22),
                      children: [
                        TextSpan(
                          text: text.firstPageDevelopers,
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
                  text: text.the,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 18),
                  children: [
                    TextSpan(
                      text: text.ui,
                      style: textStyle
                          .headline5!
                          .copyWith(fontSize: 27),
                    ),
                    TextSpan(
                      text: text.andThe,
                      style: textStyle
                          .headline2!
                          .copyWith(fontSize: 18),
                    ),
                    TextSpan(
                      text: text.code,
                      style: textStyle
                          .headline5!
                          .copyWith(fontSize: 27),
                    )
                  ]),
              maxLines: 1,
            ),

            //! 7days CHALLENGE
            Text(
              text.sevendays,
              style: Theme.of(context).textTheme.headline1,
            ),
            AutoSizeText(
              text.challenge,
              style: Theme.of(context).textTheme.headline1,
              textScaleFactor: 1.1,
            ),

            //! CORNELIUS AND MARCEL PICTURES
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      text.firstPageCornelius,
                      style: textStyle
                          .headline1!
                          .copyWith(fontSize: 16),
                      // textScaleFactor: 1.1,
                    ),
                    Text(
                      text.firstPageUiDeveloper,
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontSize: 16,
                            foreground: Paint()
                              ..color = Theme.of(context).highlightColor,
                          ),
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
                        width: size.width * 0.28,
                        height: size.height * 0.33,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      text.firstPageMarcel,
                      style: textStyle
                          .headline1!
                          .copyWith(fontSize: 16),
                    ),
                    Text(
                      text.mobileFlutterDev,
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontSize: 14,
                            foreground: Paint()
                              ..color = Theme.of(context).highlightColor,
                          ),
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
