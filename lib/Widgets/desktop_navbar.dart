// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_days_web/src/localization/locales.dart';
import 'package:seven_days_web/src/utils/color_constant.dart';

class DesktopNavBar extends StatefulWidget implements PreferredSizeWidget {
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
  State<DesktopNavBar> createState() => _DesktopNavBarState();

  @override
  Size get preferredSize => Size.fromHeight(100);
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  final List _hover = [
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * 0.08,
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
              letterSpacing: 3,
              fontSize: 30,
              foreground: Paint()
                ..strokeWidth = 2
                ..color = Colors.purple
                ..style = PaintingStyle.stroke,
              // color: Colors.purple
            ),
            textScaleFactor: 1.4,
          ),
          SizedBox(
            width: widget.size.width * 0.35,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle textStyle(dynamic _hover, int index) {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: !_hover[index] ? 18 : 20,
    letterSpacing: 3,
    color: !_hover[index] ?  ColorConstant.textWhiteColor : ColorConstant.lightTeal
  );
}
