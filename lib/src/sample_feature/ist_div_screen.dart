import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_days_web/Presentation/Screens/ist_screen.dart';
import 'package:seven_days_web/Widgets/clip_path_background.dart';
import 'package:seven_days_web/Widgets/desktop_navbar.dart';
import 'package:seven_days_web/src/localization/locales.dart';
import 'package:seven_days_web/src/utils/color_constant.dart';

import '../../Widgets/bg_screen.dart';
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
      body: SevenDaysBG(
        size: size,
        navBar: Positioned(
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
        child: IstScreen(size: size),
      ),
    );
  }
}


