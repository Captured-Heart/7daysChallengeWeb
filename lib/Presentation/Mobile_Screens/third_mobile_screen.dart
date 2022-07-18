import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seven_days_web/Presentation/Widgets/bg_screen.dart';
import 'package:seven_days_web/Presentation/Widgets/dashed_lines.dart';
import 'package:seven_days_web/src/localization/locales.dart';

import '../Widgets/theme_switch.dart';

class ThirdMobileScreen extends StatelessWidget {
  const ThirdMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SevenDaysBG(
            size: size,
            navBar: ThirdMobileNavBar(size: size),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  color: Colors.teal,
                  height: size.height * 0.32,
                  width: size.width,
                  padding: const EdgeInsets.all(20),
                  child: Text(AppLocales.of(context).aboutUsContent),
                ),
                SizedBox(
                  height: size.height * 0.38,
                  width: size.width,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: size.width * 0.1,
                              child: Divider(
                                color: IconTheme.of(context).color,
                                thickness: 5,
                                height: 25,
                              ),
                            ),
                            Text(
                              AppLocales.of(context).contactUs,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.copyWith(fontSize: 16),
                            ),
                            SizedBox(
                              width: size.width,
                              child: Divider(
                                color: Theme.of(context).canvasColor,
                                thickness: 2,
                                height: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.07,
                          ),
                          ListTile(
                            dense: true,
                            // contentPadding: EdgeInsets.zero,
                            horizontalTitleGap: 1,
                            minVerticalPadding: 1,
                            leading: Icon(
                              FontAwesomeIcons.envelope,
                              size: size.width * 0.06,
                              color: IconTheme.of(context).color,
                              // color:
                            ),
                            //TODO: ADD URL LINK TO THIS GITHUB AND EMAIL LINKS
                            title: Text(
                              AppLocales.of(context).corenliusEmail,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(fontSize: 18),
                            ),
                          ),
                          ListTile(
                            dense: true,
                            // minVerticalPadding: 1,
                            horizontalTitleGap: 1,

                            // contentPadding: EdgeInsets.zero,
                            leading: Icon(
                              FontAwesomeIcons.github,
                              size: size.width * 0.06,
                              color: IconTheme.of(context).color,
                              // color:
                            ),
                            //TODO: ADD URL LINK TO THIS GITHUB AND EMAIL LINKS
                            title: Text(
                              AppLocales.of(context).corneliusGitHub,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 3),
                            child: Text(
                              AppLocales.of(context).firstPageCornelius,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                          const DashedLines(direction: Axis.horizontal)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class ThirdMobileNavBar extends StatelessWidget {
  const ThirdMobileNavBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        clipBehavior: Clip.none,
        height: size.height * 0.12,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border(
              bottom: BorderSide(color: Theme.of(context).canvasColor),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.1,
                  child: Divider(
                    color: IconTheme.of(context).color,
                    thickness: 5,
                    height: 25,
                  ),
                ),
                Text(
                  AppLocales.of(context).aboutUs,
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(fontSize: 16),
                ),
              ],
            ),
            // ThemeSwitchWeb(themeProvider: themeProvider),
          ],
        ),
      ),
    );
  }
}
