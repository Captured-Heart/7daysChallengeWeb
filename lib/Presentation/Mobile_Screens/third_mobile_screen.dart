import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seven_days_web/Presentation/Widgets/bg_screen.dart';
import 'package:seven_days_web/Presentation/Widgets/dashed_lines.dart';

import '../../src/localization/locale_interface.dart';
import '../Widgets/mobile/third_mobile_navbar.dart';

class ThirdMobileScreen extends StatelessWidget {
  const ThirdMobileScreen(
      {Key? key, required this.text, required this.textStyle, required this.size})
      : super(key: key);
  final LocaleInterface text;
  final TextTheme textStyle;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SevenDaysBG(
            size: size,
            navBar:
                ThirdMobileNavBar(size: size, text: text, textStyle: textStyle),
            child: Positioned(
              top: size.height * 0.15,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: size.height,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.teal,
                        height: size.height * 0.37,
                        width: size.width,
                        padding: const EdgeInsets.all(20),
                        child: Center(
                          child: AutoSizeText(
                            text.aboutUsContent,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                      ),

                      //! footer
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            //! FOOTER
                            Container(
                              // color: Colors.red,
                              height: size.height * 0.58,
                              width: size.width,
                              margin: EdgeInsets.only(top: size.height * 0.04),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
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
                                          text.contactUs,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1
                                              ?.copyWith(fontSize: 16),
                                        ),
                                        SizedBox(
                                          width: size.width,
                                          child: Divider(
                                            color:
                                                Theme.of(context).canvasColor,
                                            thickness: 2,
                                            height: 25,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //!marcel part
                                  ListTile(
                                    dense: true,
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
                                      text.corenliusEmail,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(fontSize: 18),
                                    ),
                                  ),
                                  ListTile(
                                    dense: true,
                                    horizontalTitleGap: 1,

                                    leading: Icon(
                                      FontAwesomeIcons.github,
                                      size: size.width * 0.06,
                                      color: IconTheme.of(context).color,
                                      // color:
                                    ),
                                    //TODO: ADD URL LINK TO THIS GITHUB AND EMAIL LINKS
                                    title: Text(
                                      text.corneliusGitHub,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(fontSize: 18),
                                    ),
                                  ),
//TODO: ADD URL LINK TO THE SOCIAL HANDLES
                                  Center(
                                    child: SizedBox(
                                      width: size.width / 1.7,
                                      child: DashedLines(
                                        direction: Axis.horizontal,
                                        color: Theme.of(context).canvasColor,
                                        height: 3,
                                      ),
                                    ),
                                  ),

                                  //! marcel footer
                                  ListTile(
                                    dense: true,
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
                                      text.marcelEmail,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(fontSize: 18),
                                    ),
                                  ),
                                  ListTile(
                                    dense: true,
                                    horizontalTitleGap: 1,

                                    leading: Icon(
                                      FontAwesomeIcons.github,
                                      size: size.width * 0.06,
                                      color: IconTheme.of(context).color,
                                      // color:
                                    ),
                                    //TODO: ADD URL LINK TO THIS GITHUB AND EMAIL LINKS
                                    title: Text(
                                      text.marcelGitHub,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(fontSize: 18),
                                    ),
                                  ),
                                  //
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

