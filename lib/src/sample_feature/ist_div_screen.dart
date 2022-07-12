import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_days_web/Widgets/clip_path_background.dart';
import 'package:seven_days_web/Widgets/desktop_navbar.dart';
import 'package:seven_days_web/src/localization/locales.dart';
import 'package:seven_days_web/src/utils/color_constant.dart';

import 'sample_item.dart';

/// Displays a list of SampleItems.
class IstDivScreen extends StatefulWidget {
  const IstDivScreen({
    Key? key,
    this.items = const [SampleItem(1), SampleItem(2), SampleItem(3)],
  }) : super(key: key);

  static const routeName = '/';

  final List<SampleItem> items;

  @override
  State<IstDivScreen> createState() => _IstDivScreenState();
}

class _IstDivScreenState extends State<IstDivScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorConstant.darkBgColor,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: DesktopNavBar(
                size: size,
                onTapAbout: () {},
                onTapHome: () {},
                onTapPortfolio: () {},
                onTopContact: () {},
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Image.asset(
                'assets/images/circleBG.png',
                height: size.height * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/wavyBG.png',
                height: size.height * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: size.width * 0.15,
                  height: size.height,
                  child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.loose,
                    children: [
                      Positioned(
                        top: size.height * 0.1,
                        left: size.width * 0.02,
                        child: Image.asset(
                          'assets/images/UI.png',
                          height: size.height * 0.15,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        bottom: size.height * 0.1,
                        left: size.width * 0.02,
                        child: Image.asset(
                          'assets/images/Code.png',
                          height: size.height * 0.5,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.23,
                        left: size.width * 0.04,
                        child: Image.asset(
                          'assets/images/vs.png',
                          height: size.height * 0.19,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),

                //! MAIN BODY
                Stack(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText.rich(
                          TextSpan(
                              text: AppLocales.of(context).firstPageHI,
                              style: TextStyle(
                                color: ColorConstant.textWhiteColor,
                                fontSize: 30,
                              ),
                              children: [
                                TextSpan(
                                  text: AppLocales.of(context).firstPageHumans,
                                  style: TextStyle(
                                    color: ColorConstant.lightTeal,
                                    fontSize: 30,
                                  ),
                                )
                              ]),
                          maxLines: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //
                        AutoSizeText.rich(
                          TextSpan(
                              text: AppLocales.of(context).andWeAre,
                              style: TextStyle(
                                color: ColorConstant.textWhiteColor,
                                fontSize: 30,
                              ),
                              children: [
                                TextSpan(
                                  text: AppLocales.of(context)
                                      .firstPageDevelopers,
                                  style: TextStyle(
                                    // color: ColorConstant.lightTeal,
                                    fontSize: 28,
                                    letterSpacing: 3,
                                    foreground: Paint()
                                      ..strokeWidth = 2.8
                                      ..color = ColorConstant.lightTeal
                                      ..style = PaintingStyle.stroke,
                                  ),
                                )
                              ]),
                          maxLines: 1,
                        ),
                        AutoSizeText.rich(
                          TextSpan(
                              text: AppLocales.of(context).the,
                              style: TextStyle(
                                color: ColorConstant.textWhiteColor,
                                fontSize: 30,
                              ),
                              children: [
                                TextSpan(
                                  text: AppLocales.of(context).ui,
                                  style: TextStyle(
                                    color: ColorConstant.lightTeal,
                                    fontSize: 30,
                                  ),
                                ),
                                TextSpan(
                                  text: AppLocales.of(context).andThe,
                                  style: TextStyle(
                                    color: ColorConstant.textWhiteColor,
                                    fontSize: 30,
                                  ),
                                ),
                                TextSpan(
                                  text: AppLocales.of(context).code,
                                  style: TextStyle(
                                    // color: ColorConstant.lightTeal,
                                    fontSize: 30,
                                    foreground: Paint()
                                      ..strokeWidth = 1.7
                                      ..color = ColorConstant.lightTeal
                                      ..style = PaintingStyle.stroke,
                                  ),
                                )
                              ]),
                          maxLines: 1,
                        ),
                      ],
                    ),


                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 10,
                      // alignment: Alignment.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,

                            children: [
                              ClipLeftBackground(
                                left: true,
                                widget: Image.asset(
                                  'assets/images/cornelius.png',
                                  width: size.width * 0.25,
                                  height: size.height * 0.45,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                AppLocales.of(context).firstPageCornelius,
                                style: GoogleFonts.lato(
                                  fontSize: 30,
                                  letterSpacing: 6,
                                  foreground: Paint()
                                    ..strokeWidth = 2
                                    ..color = ColorConstant.textWhiteColor
                                    ..style = PaintingStyle.stroke,
                                ),
                                textScaleFactor: 1.4,
                              ),
                              Text(
                                AppLocales.of(context).firstPageUiDeveloper,
                                style: GoogleFonts.lato(
                                  fontSize: 30,
                                  letterSpacing: 6,
                                  wordSpacing: 5,
                                  foreground: Paint()
                                    ..strokeWidth = 2
                                    ..color = ColorConstant.lightTeal
                                    ..style = PaintingStyle.stroke,
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,

                            children: [
                              ClipLeftBackground(
                                left: false,
                                widget: Image.asset(
                                  'assets/images/marcel.png',
                                  width: size.width * 0.25,
                                  height: size.height * 0.45,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                AppLocales.of(context).firstPageMarcel,
                                textScaleFactor: 1.4,
                                style: GoogleFonts.lato(
                                  fontSize: 30,
                                  letterSpacing: 6,
                                  foreground: Paint()
                                    ..strokeWidth = 2
                                    ..color = ColorConstant.textWhiteColor
                                    ..style = PaintingStyle.stroke,
                                ),
                              ),
                              Text(
                                AppLocales.of(context)
                                    .firstPageFlutterDeveloper,
                                style: GoogleFonts.lato(
                                  fontSize: 30,
                                  letterSpacing: 6,
                                  wordSpacing: 5,
                                  foreground: Paint()
                                    ..strokeWidth = 2
                                    ..color = ColorConstant.lightTeal
                                    ..style = PaintingStyle.stroke,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
