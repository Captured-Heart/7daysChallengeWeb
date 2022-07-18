import 'package:flutter/material.dart';
import 'package:seven_days_web/src/utils/color_constant.dart';

TextTheme darkTextTheme(TextTheme base) {
  return base.copyWith(
    headline1: base.headline1!.copyWith(
      fontSize: 27,
      letterSpacing: 3,
      foreground: Paint()
        ..strokeWidth = 1.5
        ..color = ColorConstant.textWhiteColor
        ..style = PaintingStyle.stroke,
    ),
    headline2: base.headline2!.copyWith(
      color: ColorConstant.lightTeal,
      fontSize: 23,
    ),
    headline3: base.headline3!.copyWith(
      fontSize: 33,
      letterSpacing: 5,
      foreground:  Paint()
        ..strokeWidth = 3
        ..color = ColorConstant.lightTeal
        ..style = PaintingStyle.stroke,
    ),
    headline4: base.headline4!.copyWith(
      fontSize: 30,
      letterSpacing: 6,
      foreground: Paint()
        ..strokeWidth = 4
        ..color = ColorConstant.textWhiteColor
        ..style = PaintingStyle.stroke,
    ),
    headline5: base.headline5!.copyWith(
      fontSize: 35,
      letterSpacing: 5,
      foreground: Paint()
        ..strokeWidth = 3
        ..color = ColorConstant.lightTeal
        ..style = PaintingStyle.stroke,
    ),
     headline6: base.headline6!.copyWith(
      fontSize: 30,
      letterSpacing: 5,
      foreground: Paint()
        ..strokeWidth = 2.5
        ..color = ColorConstant.textWhiteColor
        ..style = PaintingStyle.stroke,
    ),
  );
}

//LIGHT MODE
TextTheme _lightTextTheme(TextTheme base) {
  return base.copyWith(
    headline1: base.headline1!.copyWith(
      fontSize: 27,
      letterSpacing: 3,
      foreground: Paint()
        ..strokeWidth = 3.4
        ..color = ColorConstant.darkBgColor.withOpacity(0.7)
        ..style = PaintingStyle.stroke,
    ),

    headline2: base.headline2!.copyWith(
      color: ColorConstant.darkBgColor,
      fontSize: 23,
    ),

    //?  3
    headline3: base.headline3!.copyWith(
      fontSize: 33,
      letterSpacing: 5,
      foreground: Paint()
        ..strokeWidth = 4
        ..color = ColorConstant.darkBgColor
        ..style = PaintingStyle.stroke,
    ),

    //? 4
    headline4: base.headline4!.copyWith(
      fontSize: 30,
      letterSpacing: 6,
      foreground: Paint()
        ..strokeWidth = 4.5
        ..color = ColorConstant.textBlackColor
        ..style = PaintingStyle.stroke,
    ),

    //? 5
    headline5: base.headline5!.copyWith(
      fontSize: 35,
      letterSpacing: 5,
      foreground: Paint()
        ..strokeWidth = 4
        ..color = ColorConstant.lightTeal
        ..style = PaintingStyle.stroke,
    ),

    //? 6
    headline6: base.headline6!.copyWith(
      fontSize: 30,
      letterSpacing: 5,
      foreground: Paint()
        ..strokeWidth = 4
        ..color = ColorConstant.textBlackColor
        ..style = PaintingStyle.stroke,
    ),

    
  );
}

class MyTheme {
  //! DARK THEME
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: ColorConstant.darkBgColor,
    primaryColor: const Color(0xff272c3a),
    iconTheme:  IconThemeData(color: ColorConstant.lightTeal),
    highlightColor: ColorConstant.shapeColorLightBg,
    canvasColor: ColorConstant.shapeColorDarkBg,
    textTheme: darkTextTheme(ThemeData.dark().textTheme),
    textSelectionTheme: TextSelectionThemeData(
        selectionColor: ColorConstant.lightTeal,
        selectionHandleColor: ColorConstant.lightTeal,
        cursorColor: ColorConstant.lightTeal),
    colorScheme:
        const ColorScheme.dark().copyWith(secondary: const Color(0xffffffff)),
  );

//! LIGHT THEME
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: ColorConstant.textWhiteColor,
    // highlightColor: Color.fromARGB(255, 4, 30, 31),
    highlightColor: ColorConstant.shapeColorDarkBg,

    primaryColor: Colors.white,
    iconTheme: const IconThemeData(color: Color(0xff000000), opacity: 0.7),
    canvasColor: ColorConstant.shapeColorLightBg,
    textTheme: _lightTextTheme(ThemeData.light().textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Color(0xff58A4EB),
      selectionHandleColor: Color(0xff58A4EB),
      cursorColor: Color(0xff58A4EB),
    ),
    colorScheme:
        const ColorScheme.light().copyWith(secondary: const Color(0xff858585)),
  );
}
