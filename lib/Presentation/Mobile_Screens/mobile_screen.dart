import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seven_days_web/Presentation/Desktop_Screens/ist_screen_desktop.dart';
import 'package:seven_days_web/Presentation/Mobile_Screens/ist_mobile_screen.dart';
import 'package:seven_days_web/Presentation/Mobile_Screens/second_mobile_screen.dart';
import 'package:seven_days_web/Presentation/Mobile_Screens/third_mobile_screen.dart';
import 'package:seven_days_web/src/localization/locales.dart';

import '../../Presentation/Desktop_Screens/second_screen_desktop.dart';
import '../../Presentation/Desktop_Screens/third_screen_desktop.dart';
import '../../Providers/utils_providers.dart';

class MobileScreen extends ConsumerStatefulWidget {
  const MobileScreen({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  MobileScreenState createState() => MobileScreenState();
}

class MobileScreenState extends ConsumerState<MobileScreen> {
  // late final PageController pageController;
  @override
  Widget build(BuildContext context) {
    final pageController = ref.watch(pageControllerProvider);
    final Size size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme;
    final text = AppLocales.of(context);
    return Scaffold(
        // backgroundColor: ColorConstant.darkBgColor,
        body: SizedBox(
      height: size.height,
      width: size.width,
      child: PageView(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        pageSnapping: false,
        padEnds: false,
        allowImplicitScrolling: true,
        controller: pageController,
        children: [
          IstMobileScreen(size: size, text: text, textStyle: textStyle),
          SecondMobileScreen(),
          ThirdMobileScreen(size: size, text: text, textStyle: textStyle),
        ],
      ),
    )

        //
        );
  }
}
