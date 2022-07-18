import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seven_days_web/Presentation/Widgets/bg_screen.dart';
import 'package:seven_days_web/Presentation/Widgets/desktop_navbar_one.dart';
import 'package:seven_days_web/Presentation/Widgets/left_side_widget.dart';

import '../../Providers/utils_providers.dart';
import '../../src/localization/locales.dart';
import '../Widgets/clip_path_background.dart';

class IstScreenDesktop extends ConsumerWidget {
  const IstScreenDesktop({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    return SevenDaysBG(
      size: size,
      navBar: DesktopNavBar1(
        size: size,
        onTapAbout: () {
          pageController.jumpToPage(2);
        },
        onTapHome: () {
          pageController.jumpToPage(0);
        },
        onTapPortfolio: () {
          pageController.jumpToPage(1);
        },
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
              width: size.width * 0.15,
              height: size.height,
              child: LeftSideBarContent(
                size: size,
              )),

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
                      child: const HiWeAreHere(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //
                    Positioned(
                      top: size.height * 0.22,
                      child: const AndWeAreDev(),
                    ),
                    Positioned(
                      top: size.height * 0.32,
                      left: size.width * 0.3,
                      // right: size.width/2,
                      child: const UiandTheCode(),
                    ),
                  ],
                ),

                //! IMAGES ROW
                Positioned(
                  bottom: size.height * 0.06,
                  left: 0,
                  right: 10,
                  child: Stack(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //
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
                                style: Theme.of(context).textTheme.headline1,
                                textScaleFactor: 1.4,
                              ),
                              Text(
                                AppLocales.of(context).firstPageUiDeveloper,
                                style: Theme.of(context).textTheme.headline3,
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
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              Text(
                                AppLocales.of(context)
                                    .firstPageFlutterDeveloper,
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ],
                          )
                        ],
                      ),

                      //! 7days challenge div
                      Positioned(
                        left: size.width * 0.31,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            AutoSizeText.rich(
                              TextSpan(
                                  text: AppLocales.of(context).sevendays,
                                  style: Theme.of(context).textTheme.headline1,
                                  children: [
                                    TextSpan(
                                      text: AppLocales.of(context).code,
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                    TextSpan(
                                      text: AppLocales.of(context).vs,
                                      style:
                                          Theme.of(context).textTheme.headline1,
                                    ),
                                    TextSpan(
                                      text: AppLocales.of(context).ui,
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                  ]),
                              maxLines: 1,
                              textScaleFactor: 1.2,
                            ),
                            AutoSizeText(
                              AppLocales.of(context).challenge,
                              style: Theme.of(context).textTheme.headline1,
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
      ),
    );
  }
}

class UiandTheCode extends StatelessWidget {
  const UiandTheCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(
          text: AppLocales.of(context).the,
          style: Theme.of(context).textTheme.headline1,
          children: [
            TextSpan(
              text: AppLocales.of(context).ui,
              style: Theme.of(context).textTheme.headline5,
            ),
            TextSpan(
              text: AppLocales.of(context).andThe,
              style: Theme.of(context).textTheme.headline2,
            ),
            TextSpan(
              text: AppLocales.of(context).code,
              style: Theme.of(context).textTheme.headline5,
            )
          ]),
      maxLines: 1,
    );
  }
}

class AndWeAreDev extends StatelessWidget {
  const AndWeAreDev({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(
          text: AppLocales.of(context).andWeAre,
          style: Theme.of(context).textTheme.headline1,
          children: [
            TextSpan(
              text: AppLocales.of(context).firstPageDevelopers,
              style: Theme.of(context).textTheme.headline3,
            )
          ]),
      maxLines: 1,
    );
  }
}

class HiWeAreHere extends StatelessWidget {
  const HiWeAreHere({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(
          text: AppLocales.of(context).firstPageHI,
          style: Theme.of(context).textTheme.headline1,
          children: [
            TextSpan(
              text: AppLocales.of(context).firstPageHumans,
              style: Theme.of(context).textTheme.headline3,
            )
          ]),
      maxLines: 1,
    );
  }
}
