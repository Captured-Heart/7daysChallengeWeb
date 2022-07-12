// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_days_web/Providers/app_theme.dart';
import 'package:seven_days_web/src/localization/locales.dart';
import 'package:seven_days_web/src/utils/color_constant.dart';

class DesktopNavBar extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  const DesktopNavBar({
    Key? key,
    required this.size,
    required this.onTapAbout,
    required this.onTapHome,
    required this.onTapPortfolio,
    required this.onTopContact,
  }) : super(key: key);

  final Size size;
  final VoidCallback onTapAbout, onTapHome, onTapPortfolio, onTopContact;
  @override
  DesktopNavBarState createState() => DesktopNavBarState();

  @override
  Size get preferredSize => Size.fromHeight(120);
}

class DesktopNavBarState extends ConsumerState<DesktopNavBar> {
  final List _hover = [
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(isDarkModeProvider);
    final themeMode = ref.watch(themeModeProvider);
    return Container(
      height: widget.size.height * 0.09,
      padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.06),
      decoration: BoxDecoration(
        // color: Colors.white,
        border: Border(
            bottom: BorderSide(
          color: Colors.grey,
          width: 1.4,
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppLocales.of(context).navBarLogo,
            style: GoogleFonts.dancingScript(
              wordSpacing: 10,
              letterSpacing: 6,
              fontSize: 35,
              foreground: Paint()
                ..strokeWidth = 4
                ..color = ColorConstant.textWhiteColor
                ..style = PaintingStyle.stroke,
              // color: Colors.purple
            ),
            textScaleFactor: 1.4,
          ),
          SizedBox(
            width: widget.size.width * 0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: widget.onTapHome,
                  onHover: ((value) {
                    setState(() {
                      value ? _hover[0] = true : _hover[0] = false;
                    });
                  }),
                  child: Text(
                    AppLocales.of(context).navBarHome,
                    style: textStyle(_hover, 0),
                  ),
                ),

                //!PORTFOLIO
                InkWell(
                  onTap: widget.onTapPortfolio,
                  onHover: ((value) {
                    setState(() {
                      value ? _hover[1] = true : _hover[1] = false;
                    });
                  }),
                  child: Text(
                    AppLocales.of(context).navBarWork,
                    style: textStyle(_hover, 1),
                  ),
                ),

                //!ABOUT ME
                InkWell(
                    onTap: widget.onTapAbout,
                    onHover: ((value) {
                      setState(() {
                        value ? _hover[2] = true : _hover[2] = false;
                      });
                    }),
                    child: Text(
                      AppLocales.of(context).navBarContact,
                      style: textStyle(_hover, 2),
                    )),
                FlutterSwitch(
                  width: 100.0,
                  height: 50.0,
                  toggleSize: 45.0,
                  value: value,
                  borderRadius: 30.0,
                  padding: 2.0,
                  activeToggleColor: Color(0xFF6E40C9),
                  inactiveToggleColor: Color(0xFF2F363D),
                  activeSwitchBorder: Border.all(
                    color: Color(0xFF3C1E70),
                    width: 6.0,
                  ),
                  inactiveSwitchBorder: Border.all(
                    color: Color(0xFFD1D5DA),
                    width: 6.0,
                  ),
                  activeColor: Color(0xFF271052),
                  inactiveColor: Colors.white,
                  activeIcon: Icon(
                    Icons.nightlight_round,
                    color: Color(0xFFF8E3A1),
                  ),
                  inactiveIcon: Icon(
                    Icons.wb_sunny,
                    color: Color(0xFFFFDF5D),
                  ),
                  onToggle: (val) {
                    if(val){
                      ref.read(themeModeProvider.state).update((state) => ThemeMode.dark);
                    }else{
                      ref.read(themeModeProvider.state).update((state) => ThemeMode.light);

                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle textStyle(dynamic hover, int index) {
  return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: !hover[index] ? 18 : 20,
      letterSpacing: 3,
      color: !hover[index]
          ? ColorConstant.textWhiteColor
          : ColorConstant.lightTeal);
}
