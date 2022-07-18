import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seven_days_web/Presentation/Widgets/bg_screen.dart';
import 'package:seven_days_web/Presentation/Widgets/desktop_navbar_three.dart';
import 'package:seven_days_web/src/localization/locales.dart';

import '../../src/localization/locale_interface.dart';
import '../../src/utils/color_constant.dart';
import '../Widgets/dashed_lines.dart';

class ThirdScreenDesktop extends StatelessWidget {
  const ThirdScreenDesktop({
    Key? key,
    required this.size,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  final Size size;
  final LocaleInterface text;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return SevenDaysBG(
      size: size,
      navBar: DesktopNavBar3(
        size: size,
        navTitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.05,
              child: Divider(
                color: IconTheme.of(context).color,
                thickness: 5,
                height: 25,
              ),
            ),
            Text(
              text.contactUs,
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: size.width * 0.15,
            height: size.height,
          ),

          //! MAIN BODY
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: size.height * 0.16,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //? DIVIDER AND ABOUT US
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: size.width * 0.05,
                                child: Divider(
                                  color: IconTheme.of(context).color,
                                  thickness: 5,
                                  height: 25,
                                ),
                              ),
                              Text(
                                text.aboutUs,
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          //?  ABOUT US CONTENT
                          Container(
                            width: size.width * 0.4,
                            height: size.height * 0.55,
                            color: ColorConstant.lightTeal,
                          ),
                        ],
                      ),

                      //? DASHED LINES
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SizedBox(
                          height: size.height * 0.55,
                          width: size.width * 0.08,
                          child: DashedLines(
                            height: 10,
                            color: ColorConstant.shapeColorDarkBg,
                            direction: Axis.vertical,
                          ),
                        ),
                      ),

                      //? CONTACT US AND DIVIDER
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: size.width * 0.05,
                                child: Divider(
                                  color: IconTheme.of(context).color,
                                  thickness: 5,
                                  height: 25,
                                ),
                              ),
                              Text(
                                text.contactUs,
                                style: textStyle.headline1,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          //? CONTACT US CONTENTS
                          SizedBox(
                            width: size.width * 0.3,
                            height: size.height * 0.55,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ListTile(
                                  leading: Icon(
                                    FontAwesomeIcons.envelope,
                                    size: size.width * 0.022,
                                    color: IconTheme.of(context).color,
                                  ),
                                  title: Text(
                                    text.corenliusEmail,
                                    style: textStyle.headline2,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                  leading: Icon(
                                    FontAwesomeIcons.github,
                                    size: size.width * 0.022,
                                    color: IconTheme.of(context).color,
                                    // color:
                                  ),
                                  //TODO: ADD URL LINK TO THIS GITHUB AND EMAIL LINKS
                                  title: Text(
                                    text.corneliusGitHub,
                                    style: textStyle.headline2,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.07,
                                ),
                                ListTile(
                                  leading: Icon(
                                    FontAwesomeIcons.envelope,
                                    size: size.width * 0.022,
                                    color: IconTheme.of(context).color,
                                  ),
                                  title: Text(
                                    text.marcelEmail,
                                    style: textStyle.headline2,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                  leading: Icon(
                                    FontAwesomeIcons.github,
                                    size: size.width * 0.022,
                                    color: IconTheme.of(context).color,
                                  ),
                                  title: Text(
                                    text.marcelGitHub,
                                    style: textStyle.headline2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}