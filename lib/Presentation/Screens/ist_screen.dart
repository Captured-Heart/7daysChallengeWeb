import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/clip_path_background.dart';
import '../../src/localization/locales.dart';
import '../../src/utils/color_constant.dart';

class IstScreen extends StatelessWidget {
  const IstScreen({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Row(
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
                top: size.height * 0.12,
                left: size.width * 0.02,
                child: Image.asset(
                  'assets/images/UI.png',
                  height: size.height * 0.15,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                bottom: size.height * 0.086,
                left: size.width * 0.02,
                child: Image.asset(
                  'assets/images/Code.png',
                  height: size.height * 0.5,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: size.height * 0.24,
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
        Expanded(
          child: Stack(
            fit: StackFit.expand,
           
            children: [
              Stack(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Positioned(
                    top: size.height * 0.16,
                    left: 0,
                    child: AutoSizeText.rich(
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //
                  Positioned(
                    top: size.height * 0.22,
                    child: AutoSizeText.rich(
                      TextSpan(
                          text: AppLocales.of(context).andWeAre,
                          style: TextStyle(
                            color: ColorConstant.textWhiteColor,
                            fontSize: 30,
                          ),
                          children: [
                            TextSpan(
                              text: AppLocales.of(context).firstPageDevelopers,
                              style: TextStyle(
                                // color: ColorConstant.lightTeal,
                                fontSize: 32,
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
                  ),
                  Positioned(
                    top: size.height * 0.32,
                    left: size.width * 0.3,
                    // right: size.width/2,
                    child: AutoSizeText.rich(
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
                                fontSize: 35,
                                foreground: Paint()
                                  ..strokeWidth = 3
                                  ..color = ColorConstant.lightTeal
                                  ..style = PaintingStyle.stroke,
                              ),
                            ),
                            TextSpan(
                              text: AppLocales.of(context).andThe,
                              style: TextStyle(
                                color: ColorConstant.textWhiteColor,
                                fontSize: 35,
                              ),
                            ),
                            TextSpan(
                              text: AppLocales.of(context).code,
                              style: TextStyle(
                                // color: ColorConstant.lightTeal,
                                fontSize: 40,
                                letterSpacing: 5,
                                foreground: Paint()
                                  ..strokeWidth = 3.2
                                  ..color = ColorConstant.lightTeal
                                  ..style = PaintingStyle.stroke,
                              ),
                            )
                          ]),
                      maxLines: 1,
                    ),
                  ),
                ],
              ),

              //! IMAGES ROW
              Positioned(
                bottom: size.height * 0.06,
                left: 0,
                // top: 0,
                right: 10,
                // alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // ? CORNELIUS COLUMN
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

                            //? Cornelius Text
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

                        //? MARCEL COLUMN
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

                            //? marcel text
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
                              AppLocales.of(context).firstPageFlutterDeveloper,
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

                    //! 7days challenge div
                    Positioned(
                      left: size.width * 0.3,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AutoSizeText.rich(
                            TextSpan(
                                text: AppLocales.of(context).sevendays,
                                style: TextStyle(
                                  // color: ColorConstant.textWhiteColor,
                                  fontSize: 28,
                                  letterSpacing: 4,
                                  foreground: Paint()
                                    ..strokeWidth = 2.5
                                    ..color = ColorConstant.textWhiteColor
                                    ..style = PaintingStyle.stroke,
                                ),
                                children: [
                                  TextSpan(
                                    text: AppLocales.of(context).navBarLogo,
                                    style: TextStyle(
                                      fontSize: 30,
                                      foreground: Paint()
                                        ..strokeWidth = 4
                                        ..color = ColorConstant.lightTeal
                                        ..style = PaintingStyle.stroke,
                                    ),
                                  ),
                                ]),
                            maxLines: 1,
                            textScaleFactor: 1.4,
                          ),
                          AutoSizeText(
                            AppLocales.of(context).challenge,
                            style: TextStyle(
                              fontSize: 27,
                              foreground: Paint()
                                ..strokeWidth = 2.5
                                ..color = ColorConstant.textWhiteColor
                                ..style = PaintingStyle.stroke,
                            ),
                            textScaleFactor: 1.4,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
